# Cache module for managing data loading and caching
# Author: Shuo Li
# Created: 12/12/2024

#' Initialize cache directory
#' @param dir Cache directory path
initialize_cache <- function(dir = "cache") {
  if (!dir.exists(dir)) {
    dir.create(dir, recursive = TRUE)
  }
}

#' Generate cache file path
#' @param key Cache key
#' @param dir Cache directory
#' @return Cache file path
get_cache_path <- function(key, dir = "cache") {
  file.path(dir, paste0(key, ".RData"))
}

#' Check if cache is valid
#' @param cache_path Cache file path
#' @param max_age Maximum cache age in seconds
#' @return Boolean indicating if cache is valid
is_cache_valid <- function(cache_path, max_age = 24 * 60 * 60) {
  if (!file.exists(cache_path)) {
    return(FALSE)
  }

  cache_time <- file.info(cache_path)$mtime
  current_time <- Sys.time()

  if (difftime(current_time, cache_time, units = "secs") > max_age) {
    return(FALSE)
  }

  return(TRUE)
}

#' Clean expired cache files
#' @param dir Cache directory
#' @param max_age Maximum cache age in seconds
clean_expired_cache <- function(dir = "cache", max_age = 24 * 60 * 60) {
  if (!dir.exists(dir)) return()

  cache_files <- list.files(dir, full.names = TRUE)
  current_time <- Sys.time()

  for (file in cache_files) {
    file_time <- file.info(file)$mtime
    if (difftime(current_time, file_time, units = "secs") > max_age) {
      unlink(file)
    }
  }
}

#' Load data with caching
#' @param key Cache key
#' @param loader Function to load data
#' @param dir Cache directory
#' @param max_age Maximum cache age in seconds
#' @return Loaded data
cached_load <- function(key, loader, dir = "cache", max_age = 24 * 60 * 60) {
  initialize_cache(dir)
  clean_expired_cache(dir, max_age)

  cache_path <- get_cache_path(key, dir)

  # Try to load from cache
  if (is_cache_valid(cache_path, max_age)) {
    cached_data <- NULL
    load(cache_path, envir = environment()) # loads into cached_data
    if (!is.null(cached_data)) {
      return(cached_data)
    }
  }

  # Cache miss - load data and save to cache
  data <- loader()
  cached_data <- data
  save(cached_data, file = cache_path)

  return(data)
}

#' Save data to cache
#' @param data Data to cache
#' @param key Cache key
#' @param dir Cache directory
cache_save <- function(data, key, dir = "cache") {
  initialize_cache(dir)
  cache_path <- get_cache_path(key, dir)
  cached_data <- data
  save(cached_data, file = cache_path)
}