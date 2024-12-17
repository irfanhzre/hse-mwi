# Convert Geographies to ZCTAs 
# By Hannah De los Santos
# Originated on: 6/21/21

# Note: using household based weighted averages

# load libraries and data ----

library(stringr)
library(data.table)

cw_folder <- file.path("Data", "Resources")

# Load crosswalk files and convert to data.table
county_cw <- fread(file.path(cw_folder, "zcta_county_rel_20.csv"),
                   colClasses = c("ZCTA5" = "character", "GEOID" = "character"))
ct_cw <- fread(file.path(cw_folder, "zcta_tract_rel_20.csv"),
               colClasses = c("ZCTA5" = "character", "GEOID" = "character"))
zip_cw <- fread(file.path(cw_folder, "Zip_to_zcta_crosswalk_2021.csv"),
                colClasses = c("ZIP_CODE" = "character", "ZCTA" = "character"))

# filter out territories
territories <- as.character(c(60, 64, 66, 68, 69, 70, 72, 74, 78))
county_cw <- county_cw[!substr(county_cw$GEOID, 1, 2) %in% territories,]
ct_cw <- ct_cw[!substr(ct_cw$GEOID, 1, 2) %in% territories,]
territories <- c("AS", "FM", "GU", "MH", "MP", "PW", "PR", "VI")
zip_cw <- zip_cw[!zip_cw$STATE %in% territories,]

# also keep all unique zctas to generate a file
all_zctas <- unique(county_cw$ZCTA5)
all_zctas <- all_zctas[all_zctas != ""]

# data quality function ----

# Preprocess geoid columns with leading zeros
county_cw[, ZCTA5 := str_pad(ZCTA5, 5, pad = "0")]
county_cw[, GEOID := str_pad(GEOID, 11, pad = "0")]

ct_cw[, GEOID := str_pad(GEOID, 11, pad = "0")]
zip_cw[, ZIP_CODE := str_pad(ZIP_CODE, 5, pad = "0")]

# Convert data frames to data.table for faster operations
setDT(county_cw)
setDT(ct_cw)
setDT(zip_cw)

# Set keys for faster joins
setkey(county_cw, GEOID)
setkey(ct_cw, GEOID)
setkey(zip_cw, ZIP_CODE)

# county to zcta function ----

# function that converts county data to zcta
# input:
# df: dataframe with a geoid column for counties and a measure column
# geoid_col: column name corresponding to geoid
# meas_col: a vector of measure column names
# output:
# zcta_df: measures converted for each zcta
county_to_zcta <- function(df, geoid_col, meas_col) {
  cat(paste0("[", Sys.time(), "]: Converting county to ZCTA\n"))

  zcta_df <- data.table(ZCTA = all_zctas)
  zcta_df[, (meas_col) := NA]

  # Subset counties directly mapped
  cty_sub <- county_cw[!duplicated(ZCTA5)]
  df_sub <- df[df[[geoid_col]] %in% cty_sub$GEOID]

  zcta_df[cty_sub$ZCTA5, (meas_col) := df_sub[cty_sub$GEOID, meas_col, with = FALSE]]

  zcta_iter <- zcta_df$ZCTA[rowSums(is.na(zcta_df[, meas_col, with = FALSE])) == length(meas_col)]

  for (z in zcta_iter) {
    cty_sub <- county_cw[ZCTA5 == z & GEOID %in% df[[geoid_col]]]
    df_sub <- df[df[[geoid_col]] %in% cty_sub$GEOID]

    if (nrow(df_sub) > 0) {
      cty_sub <- cty_sub[order(GEOID)]
      df_sub <- df_sub[order(df[[geoid_col]])]

      zcta_df[z, (meas_col) := sapply(meas_col, function(x) {
        weighted.mean(df_sub[[x]], cty_sub$AREALAND_PART / cty_sub$AREALAND_ZCTA5_20 * 100, na.rm = TRUE)
      })]
    }
  }

  return(zcta_df)
}

# census tract to zcta function ----

# function that converts census tract data to zcta
# input:
# df: dataframe with a geoid column for census tracts and a measure column
# geoid_col: column name corresponding to geoid
# meas_col: a vector of measure column names
# use_mean: TRUE by default, use a mean for combining ZIP codes; otherwise, use
#   a sum for combination
# output:
# zcta_df: measures converted for each zcta
ct_to_zcta <- function(df, geoid_col, meas_col, use_mean = TRUE) {
  cat(paste0("[", Sys.time(), "]: Converting census tract to ZCTA\n"))

  zcta_df <- data.table(ZCTA = all_zctas)
  zcta_df[, (meas_col) := NA]

  ct_sub <- ct_cw[!duplicated(ZCTA5)]
  df_sub <- df[df[[geoid_col]] %in% ct_sub$GEOID]

  zcta_df[ct_sub$ZCTA5, (meas_col) := df_sub[ct_sub$GEOID, meas_col, with = FALSE]]

  zcta_iter <- zcta_df$ZCTA[rowSums(is.na(zcta_df[, meas_col, with = FALSE])) == length(meas_col)]

  for (z in zcta_iter) {
    ct_sub <- ct_cw[ZCTA5 == z & GEOID %in% df[[geoid_col]]]
    df_sub <- df[df[[geoid_col]] %in% ct_sub$GEOID]

    if (nrow(df_sub) > 0) {
      ct_sub <- ct_sub[order(GEOID)]
      df_sub <- df_sub[order(df[[geoid_col]])]

      zcta_df[z, (meas_col) := sapply(meas_col, function(x) {
        if (use_mean) {
          weighted.mean(df_sub[[x]], ct_sub$AREALAND_PART / ct_sub$AREALAND_ZCTA5_20 * 100, na.rm = TRUE)
        } else {
          sum(df_sub[[x]], na.rm = TRUE)
        }
      })]
    }
  }

  return(zcta_df)
}


# zip code to zcta function ----

# function that converts zip to zcta
# input:
# df: dataframe with a geoid column for census tracts and a measure column
# geoid_col: column name corresponding to geoid
# meas_col: a vector of measure column names
# use_mean: TRUE by default, use a mean for combining ZIP codes; otherwise, use 
#   a sum for combination 
# output:
# zcta_df: measures converted for each zcta
zip_to_zcta <- function(df, geoid_col, meas_col, use_mean = TRUE) {
  cat(paste0("[", Sys.time(), "]: Converting ZIP code to ZCTA\n"))

  zcta_df <- data.table(ZCTA = all_zctas)
  zcta_df[, (meas_col) := NA]

  zip_sub <- zip_cw[!duplicated(ZCTA)]
  df_sub <- df[df[[geoid_col]] %in% zip_sub$ZIP_CODE]

  zcta_df[zip_sub$ZCTA, (meas_col) := df_sub[zip_sub$ZIP_CODE, meas_col, with = FALSE]]

  zip_iter <- zcta_df$ZCTA[rowSums(is.na(zcta_df[, meas_col, with = FALSE])) == length(meas_col)]

  for (z in zip_iter) {
    zip_sub <- zip_cw[ZCTA == z & ZIP_CODE %in% df[[geoid_col]]]
    df_sub <- df[df[[geoid_col]] %in% zip_sub$ZIP_CODE]

    if (nrow(df_sub) > 0) {
      zcta_df[z, (meas_col) := sapply(meas_col, function(x) {
        if (use_mean) mean(df_sub[[x]], na.rm = TRUE)
        else sum(df_sub[[x]], na.rm = TRUE)
      })]
    }
  }
  
  return(zcta_df)
}
