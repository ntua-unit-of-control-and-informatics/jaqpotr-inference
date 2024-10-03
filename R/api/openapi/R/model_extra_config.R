#' Create a new ModelExtraConfig
#'
#' @description
#' A JSON object containing extra configuration for the model
#'
#' @docType class
#' @title ModelExtraConfig
#' @description ModelExtraConfig Class
#' @format An \code{R6Class} generator object
#' @field torchConfig  named list(object) [optional]
#' @field preprocessors  list(\link{Transformer}) [optional]
#' @field featurizers  list(\link{Transformer}) [optional]
#' @field doa  list(\link{Transformer}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelExtraConfig <- R6::R6Class(
  "ModelExtraConfig",
  public = list(
    `torchConfig` = NULL,
    `preprocessors` = NULL,
    `featurizers` = NULL,
    `doa` = NULL,
    #' Initialize a new ModelExtraConfig class.
    #'
    #' @description
    #' Initialize a new ModelExtraConfig class.
    #'
    #' @param torchConfig torchConfig
    #' @param preprocessors preprocessors
    #' @param featurizers featurizers
    #' @param doa doa
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`torchConfig` = NULL, `preprocessors` = NULL, `featurizers` = NULL, `doa` = NULL, ...) {
      if (!is.null(`torchConfig`)) {
        stopifnot(is.vector(`torchConfig`), length(`torchConfig`) != 0)
        sapply(`torchConfig`, function(x) stopifnot(is.character(x)))
        self$`torchConfig` <- `torchConfig`
      }
      if (!is.null(`preprocessors`)) {
        stopifnot(is.vector(`preprocessors`), length(`preprocessors`) != 0)
        sapply(`preprocessors`, function(x) stopifnot(R6::is.R6(x)))
        self$`preprocessors` <- `preprocessors`
      }
      if (!is.null(`featurizers`)) {
        stopifnot(is.vector(`featurizers`), length(`featurizers`) != 0)
        sapply(`featurizers`, function(x) stopifnot(R6::is.R6(x)))
        self$`featurizers` <- `featurizers`
      }
      if (!is.null(`doa`)) {
        stopifnot(is.vector(`doa`), length(`doa`) != 0)
        sapply(`doa`, function(x) stopifnot(R6::is.R6(x)))
        self$`doa` <- `doa`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ModelExtraConfig in JSON format
    #' @export
    toJSON = function() {
      ModelExtraConfigObject <- list()
      if (!is.null(self$`torchConfig`)) {
        ModelExtraConfigObject[["torchConfig"]] <-
          self$`torchConfig`
      }
      if (!is.null(self$`preprocessors`)) {
        ModelExtraConfigObject[["preprocessors"]] <-
          lapply(self$`preprocessors`, function(x) x$toJSON())
      }
      if (!is.null(self$`featurizers`)) {
        ModelExtraConfigObject[["featurizers"]] <-
          lapply(self$`featurizers`, function(x) x$toJSON())
      }
      if (!is.null(self$`doa`)) {
        ModelExtraConfigObject[["doa"]] <-
          lapply(self$`doa`, function(x) x$toJSON())
      }
      ModelExtraConfigObject
    },
    #' Deserialize JSON string into an instance of ModelExtraConfig
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelExtraConfig
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelExtraConfig
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`torchConfig`)) {
        self$`torchConfig` <- ApiClient$new()$deserializeObj(this_object$`torchConfig`, "map(object)", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`preprocessors`)) {
        self$`preprocessors` <- ApiClient$new()$deserializeObj(this_object$`preprocessors`, "array[Transformer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`featurizers`)) {
        self$`featurizers` <- ApiClient$new()$deserializeObj(this_object$`featurizers`, "array[Transformer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`doa`)) {
        self$`doa` <- ApiClient$new()$deserializeObj(this_object$`doa`, "array[Transformer]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ModelExtraConfig in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`torchConfig`)) {
          sprintf(
          '"torchConfig":
            %s
          ',
          jsonlite::toJSON(lapply(self$`torchConfig`, function(x){ x }), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`preprocessors`)) {
          sprintf(
          '"preprocessors":
          [%s]
',
          paste(sapply(self$`preprocessors`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`featurizers`)) {
          sprintf(
          '"featurizers":
          [%s]
',
          paste(sapply(self$`featurizers`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`doa`)) {
          sprintf(
          '"doa":
          [%s]
',
          paste(sapply(self$`doa`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ModelExtraConfig
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelExtraConfig
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelExtraConfig
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`torchConfig` <- ApiClient$new()$deserializeObj(this_object$`torchConfig`, "map(object)", loadNamespace("openapi"))
      self$`preprocessors` <- ApiClient$new()$deserializeObj(this_object$`preprocessors`, "array[Transformer]", loadNamespace("openapi"))
      self$`featurizers` <- ApiClient$new()$deserializeObj(this_object$`featurizers`, "array[Transformer]", loadNamespace("openapi"))
      self$`doa` <- ApiClient$new()$deserializeObj(this_object$`doa`, "array[Transformer]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to ModelExtraConfig
    #'
    #' @description
    #' Validate JSON input with respect to ModelExtraConfig and throw an exception if invalid
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
    #' @return String representation of ModelExtraConfig
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
# ModelExtraConfig$unlock()
#
## Below is an example to define the print function
# ModelExtraConfig$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ModelExtraConfig$lock()

