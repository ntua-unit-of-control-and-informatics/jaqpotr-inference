#' Create a new UpdateApiKey200Response
#'
#' @description
#' UpdateApiKey200Response Class
#'
#' @docType class
#' @title UpdateApiKey200Response
#' @description UpdateApiKey200Response Class
#' @format An \code{R6Class} generator object
#' @field key The updated API key character [optional]
#' @field note The updated description of the API key character [optional]
#' @field enabled Whether the API key is active or disabled character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateApiKey200Response <- R6::R6Class(
  "UpdateApiKey200Response",
  public = list(
    `key` = NULL,
    `note` = NULL,
    `enabled` = NULL,
    #' Initialize a new UpdateApiKey200Response class.
    #'
    #' @description
    #' Initialize a new UpdateApiKey200Response class.
    #'
    #' @param key The updated API key
    #' @param note The updated description of the API key
    #' @param enabled Whether the API key is active or disabled
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`key` = NULL, `note` = NULL, `enabled` = NULL, ...) {
      if (!is.null(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
      if (!is.null(`note`)) {
        if (!(is.character(`note`) && length(`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", `note`))
        }
        self$`note` <- `note`
      }
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateApiKey200Response in JSON format
    #' @export
    toJSON = function() {
      UpdateApiKey200ResponseObject <- list()
      if (!is.null(self$`key`)) {
        UpdateApiKey200ResponseObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`note`)) {
        UpdateApiKey200ResponseObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`enabled`)) {
        UpdateApiKey200ResponseObject[["enabled"]] <-
          self$`enabled`
      }
      UpdateApiKey200ResponseObject
    },
    #' Deserialize JSON string into an instance of UpdateApiKey200Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateApiKey200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateApiKey200Response
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
      }
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateApiKey200Response in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`key`)) {
          sprintf(
          '"key":
            "%s"
                    ',
          self$`key`
          )
        },
        if (!is.null(self$`note`)) {
          sprintf(
          '"note":
            "%s"
                    ',
          self$`note`
          )
        },
        if (!is.null(self$`enabled`)) {
          sprintf(
          '"enabled":
            %s
                    ',
          tolower(self$`enabled`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UpdateApiKey200Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateApiKey200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateApiKey200Response
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`key` <- this_object$`key`
      self$`note` <- this_object$`note`
      self$`enabled` <- this_object$`enabled`
      self
    },
    #' Validate JSON input with respect to UpdateApiKey200Response
    #'
    #' @description
    #' Validate JSON input with respect to UpdateApiKey200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateApiKey200Response
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# UpdateApiKey200Response$unlock()
#
## Below is an example to define the print function
# UpdateApiKey200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateApiKey200Response$lock()

