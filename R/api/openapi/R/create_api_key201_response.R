#' Create a new CreateApiKey201Response
#'
#' @description
#' CreateApiKey201Response Class
#'
#' @docType class
#' @title CreateApiKey201Response
#' @description CreateApiKey201Response Class
#' @format An \code{R6Class} generator object
#' @field clientKey The generated API key character [optional]
#' @field clientSecret The generated API secret character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateApiKey201Response <- R6::R6Class(
  "CreateApiKey201Response",
  public = list(
    `clientKey` = NULL,
    `clientSecret` = NULL,
    #' Initialize a new CreateApiKey201Response class.
    #'
    #' @description
    #' Initialize a new CreateApiKey201Response class.
    #'
    #' @param clientKey The generated API key
    #' @param clientSecret The generated API secret
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`clientKey` = NULL, `clientSecret` = NULL, ...) {
      if (!is.null(`clientKey`)) {
        if (!(is.character(`clientKey`) && length(`clientKey`) == 1)) {
          stop(paste("Error! Invalid data for `clientKey`. Must be a string:", `clientKey`))
        }
        self$`clientKey` <- `clientKey`
      }
      if (!is.null(`clientSecret`)) {
        if (!(is.character(`clientSecret`) && length(`clientSecret`) == 1)) {
          stop(paste("Error! Invalid data for `clientSecret`. Must be a string:", `clientSecret`))
        }
        self$`clientSecret` <- `clientSecret`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateApiKey201Response in JSON format
    #' @export
    toJSON = function() {
      CreateApiKey201ResponseObject <- list()
      if (!is.null(self$`clientKey`)) {
        CreateApiKey201ResponseObject[["clientKey"]] <-
          self$`clientKey`
      }
      if (!is.null(self$`clientSecret`)) {
        CreateApiKey201ResponseObject[["clientSecret"]] <-
          self$`clientSecret`
      }
      CreateApiKey201ResponseObject
    },
    #' Deserialize JSON string into an instance of CreateApiKey201Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateApiKey201Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateApiKey201Response
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`clientKey`)) {
        self$`clientKey` <- this_object$`clientKey`
      }
      if (!is.null(this_object$`clientSecret`)) {
        self$`clientSecret` <- this_object$`clientSecret`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateApiKey201Response in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`clientKey`)) {
          sprintf(
          '"clientKey":
            "%s"
                    ',
          self$`clientKey`
          )
        },
        if (!is.null(self$`clientSecret`)) {
          sprintf(
          '"clientSecret":
            "%s"
                    ',
          self$`clientSecret`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateApiKey201Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateApiKey201Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateApiKey201Response
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`clientKey` <- this_object$`clientKey`
      self$`clientSecret` <- this_object$`clientSecret`
      self
    },
    #' Validate JSON input with respect to CreateApiKey201Response
    #'
    #' @description
    #' Validate JSON input with respect to CreateApiKey201Response and throw an exception if invalid
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
    #' @return String representation of CreateApiKey201Response
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
# CreateApiKey201Response$unlock()
#
## Below is an example to define the print function
# CreateApiKey201Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateApiKey201Response$lock()

