# Read in Geography Files
# By Hannah De los Santos
# Originated on: 11/12/21

# load libraries ----

library(stringr)

# functions ----

# function to read in and clean zip code according to common mistakes
# inputs:
#   fn: file name (including path)
#   zip_cn: zip code column name
# outputs: read and cleaned data frame
read_zips <- function(fn, zip_cn){

  # Validation checks
  if (!file.exists(fn)) {
    stop("File not found: ", fn)
  }
  
  # Data validation
  validate_zip_data <- function(df) {
    invalid_zips <- df[!grepl("^\\d{5}$", df[,zip_cn]), zip_cn]
    if (length(invalid_zips) > 0) {
      warning("Invalid ZIP codes found: ", paste(invalid_zips, collapse = ", "))
    }
    return(df)
  }
  
  # read in specified file
  zip_df <- read.csv(fn,
                     colClasses = setNames("character", zip_cn))
  
  # remove all dashes
  zip_df[, zip_cn] <- gsub("-", "", zip_df[,zip_cn])
  
  # pad input zips with leading 0s
  zip_df[, zip_cn] <- str_pad(zip_df[, zip_cn], 5, pad = "0")
  
  # get rid of weirdly long ones
  zip_df[, zip_cn] <- substr(zip_df[, zip_cn], 1, 5)
  
  return(zip_df)
}
