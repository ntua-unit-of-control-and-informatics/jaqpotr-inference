#' Create a new Transformer
#'
#' @description
#' A preprocessor for the model
#'
#' @docType class
#' @title Transformer
#' @description Transformer Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field config  named list(\link{AnyType})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Transformer <- R6::R6Class(
  "Transformer",
  public = list(
    `name` = NULL,
    `config` = NULL,
    #' Initialize a new Transformer class.
    #'
    #' @description
    #' Initialize a new Transformer class.
    #'
    #' @param name name
    #' @param config config
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `config`, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`config`)) {
        stopifnot(is.vector(`config`), length(`config`) != 0)
        sapply(`config`, function(x) stopifnot(R6::is.R6(x)))
        self$`config` <- `config`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Transformer in JSON format
    #' @export
    toJSON = function() {
      TransformerObject <- list()
      if (!is.null(self$`name`)) {
        TransformerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`config`)) {
        TransformerObject[["config"]] <-
          lapply(self$`config`, function(x) x$toJSON())
      }
      TransformerObject
    },
    #' Deserialize JSON string into an instance of Transformer
    #'
    #' @description
    #' Deserialize JSON string into an instance of Transformer
    #'
    #' @param input_json the JSON input
    #' @return the instance of Transformer
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`config`)) {
        self$`config` <- ApiClient$new()$deserializeObj(this_object$`config`, "map(AnyType)", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Transformer in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`config`)) {
          sprintf(
          '"config":
          %s
',
          jsonlite::toJSON(lapply(self$`config`, function(x){ x$toJSON() }), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Transformer
    #'
    #' @description
    #' Deserialize JSON string into an instance of Transformer
    #'
    #' @param input_json the JSON input
    #' @return the instance of Transformer
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`config` <- ApiClient$new()$deserializeObj(this_object$`config`, "map(AnyType)", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to Transformer
    #'
    #' @description
    #' Validate JSON input with respect to Transformer and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transformer: the required field `name` is missing."))
      }
      # check the required field `config`
      if (!is.null(input_json$`config`)) {
        stopifnot(is.vector(input_json$`config`), length(input_json$`config`) != 0)
        tmp <- sapply(input_json$`config`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Transformer: the required field `config` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Transformer
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `config` is null
      if (is.null(self$`config`)) {
        return(FALSE)
      }

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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `config` is null
      if (is.null(self$`config`)) {
        invalid_fields["config"] <- "Non-nullable required field `config` cannot be null."
      }

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
# Transformer$unlock()
#
## Below is an example to define the print function
# Transformer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Transformer$lock()

