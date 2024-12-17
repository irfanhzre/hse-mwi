# config/config.R

# Create configuration class
ConfigManager <- R6::R6Class("ConfigManager",
                             public = list(
                               # Initialize configuration
                               initialize = function() {
                                 private$load_config()
                               },

                               # Get configuration value by key
                               get = function(key) {
                                 private$get_nested_value(private$config, strsplit(key, "\\.")[[1]])
                               },

                               # Get all configuration values
                               get_all = function() {
                                 private$config
                               },

                               # Get direct access to config
                               get_config = function() {
                                 private$config
                               }
                             ),

                             private = list(
                               config = NULL,

                               # Load all configurations
                               load_config = function() {
                                 private$config <- list(
                                   app = list(
                                     max_request_size = 300*1024^2,
                                     title = "Mental Wellness Index™ Tool"
                                   ),
                                   map = list(
                                     default_state = "Virginia",
                                     default_zcta = "23936",
                                     map_opacity = 0.7,
                                     map_height = 850
                                   ),
                                   data = list(
                                     data_folder = "Data",
                                     index_types = c("Population" = "pop", "Black" = "black")
                                   )
                                 )
                               },

                               # Helper function to get nested config values
                               get_nested_value = function(lst, keys) {
                                 if (length(keys) == 0) return(lst)
                                 if (length(keys) == 1) return(lst[[keys[1]]])
                                 return(private$get_nested_value(lst[[keys[1]]], keys[-1]))
                               }
                             )
)

# Create global configuration instance
config <- ConfigManager$new()