#' Create a new ErrorResponse
#'
#' @description
#' ErrorResponse Class
#'
#' @docType class
#' @title ErrorResponse
#' @description ErrorResponse Class
#' @format An \code{R6Class} generator object
#' @field message Error message character [optional]
#' @field code Error code integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ErrorResponse <- R6::R6Class(
  "ErrorResponse",
  public = list(
    `message` = NULL,
    `code` = NULL,
    #' Initialize a new ErrorResponse class.
    #'
    #' @description
    #' Initialize a new ErrorResponse class.
    #'
    #' @param message Error message
    #' @param code Error code
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`message` = NULL, `code` = NULL, ...) {
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`code`)) {
        if (!(is.numeric(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be an integer:", `code`))
        }
        self$`code` <- `code`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ErrorResponse in JSON format
    #' @export
    toJSON = function() {
      ErrorResponseObject <- list()
      if (!is.null(self$`message`)) {
        ErrorResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`code`)) {
        ErrorResponseObject[["code"]] <-
          self$`code`
      }
      ErrorResponseObject
    },
    #' Deserialize JSON string into an instance of ErrorResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of ErrorResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ErrorResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ErrorResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        },
        if (!is.null(self$`code`)) {
          sprintf(
          '"code":
            %d
                    ',
          self$`code`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ErrorResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of ErrorResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ErrorResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`code` <- this_object$`code`
      self
    },
    #' Validate JSON input with respect to ErrorResponse
    #'
    #' @description
    #' Validate JSON input with respect to ErrorResponse and throw an exception if invalid
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
    #' @return String representation of ErrorResponse
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
# ErrorResponse$unlock()
#
## Below is an example to define the print function
# ErrorResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ErrorResponse$lock()

