#' Create a new GetDatasets200Response
#'
#' @description
#' GetDatasets200Response Class
#'
#' @docType class
#' @title GetDatasets200Response
#' @description GetDatasets200Response Class
#' @format An \code{R6Class} generator object
#' @field content  list(\link{Dataset}) [optional]
#' @field totalElements  integer [optional]
#' @field totalPages  integer [optional]
#' @field pageSize  integer [optional]
#' @field pageNumber  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetDatasets200Response <- R6::R6Class(
  "GetDatasets200Response",
  public = list(
    `content` = NULL,
    `totalElements` = NULL,
    `totalPages` = NULL,
    `pageSize` = NULL,
    `pageNumber` = NULL,
    #' Initialize a new GetDatasets200Response class.
    #'
    #' @description
    #' Initialize a new GetDatasets200Response class.
    #'
    #' @param content content
    #' @param totalElements totalElements
    #' @param totalPages totalPages
    #' @param pageSize pageSize
    #' @param pageNumber pageNumber
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`content` = NULL, `totalElements` = NULL, `totalPages` = NULL, `pageSize` = NULL, `pageNumber` = NULL, ...) {
      if (!is.null(`content`)) {
        stopifnot(is.vector(`content`), length(`content`) != 0)
        sapply(`content`, function(x) stopifnot(R6::is.R6(x)))
        self$`content` <- `content`
      }
      if (!is.null(`totalElements`)) {
        if (!(is.numeric(`totalElements`) && length(`totalElements`) == 1)) {
          stop(paste("Error! Invalid data for `totalElements`. Must be an integer:", `totalElements`))
        }
        self$`totalElements` <- `totalElements`
      }
      if (!is.null(`totalPages`)) {
        if (!(is.numeric(`totalPages`) && length(`totalPages`) == 1)) {
          stop(paste("Error! Invalid data for `totalPages`. Must be an integer:", `totalPages`))
        }
        self$`totalPages` <- `totalPages`
      }
      if (!is.null(`pageSize`)) {
        if (!(is.numeric(`pageSize`) && length(`pageSize`) == 1)) {
          stop(paste("Error! Invalid data for `pageSize`. Must be an integer:", `pageSize`))
        }
        self$`pageSize` <- `pageSize`
      }
      if (!is.null(`pageNumber`)) {
        if (!(is.numeric(`pageNumber`) && length(`pageNumber`) == 1)) {
          stop(paste("Error! Invalid data for `pageNumber`. Must be an integer:", `pageNumber`))
        }
        self$`pageNumber` <- `pageNumber`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetDatasets200Response in JSON format
    #' @export
    toJSON = function() {
      GetDatasets200ResponseObject <- list()
      if (!is.null(self$`content`)) {
        GetDatasets200ResponseObject[["content"]] <-
          lapply(self$`content`, function(x) x$toJSON())
      }
      if (!is.null(self$`totalElements`)) {
        GetDatasets200ResponseObject[["totalElements"]] <-
          self$`totalElements`
      }
      if (!is.null(self$`totalPages`)) {
        GetDatasets200ResponseObject[["totalPages"]] <-
          self$`totalPages`
      }
      if (!is.null(self$`pageSize`)) {
        GetDatasets200ResponseObject[["pageSize"]] <-
          self$`pageSize`
      }
      if (!is.null(self$`pageNumber`)) {
        GetDatasets200ResponseObject[["pageNumber"]] <-
          self$`pageNumber`
      }
      GetDatasets200ResponseObject
    },
    #' Deserialize JSON string into an instance of GetDatasets200Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetDatasets200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetDatasets200Response
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content`)) {
        self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[Dataset]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`totalElements`)) {
        self$`totalElements` <- this_object$`totalElements`
      }
      if (!is.null(this_object$`totalPages`)) {
        self$`totalPages` <- this_object$`totalPages`
      }
      if (!is.null(this_object$`pageSize`)) {
        self$`pageSize` <- this_object$`pageSize`
      }
      if (!is.null(this_object$`pageNumber`)) {
        self$`pageNumber` <- this_object$`pageNumber`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetDatasets200Response in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`content`)) {
          sprintf(
          '"content":
          [%s]
',
          paste(sapply(self$`content`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`totalElements`)) {
          sprintf(
          '"totalElements":
            %d
                    ',
          self$`totalElements`
          )
        },
        if (!is.null(self$`totalPages`)) {
          sprintf(
          '"totalPages":
            %d
                    ',
          self$`totalPages`
          )
        },
        if (!is.null(self$`pageSize`)) {
          sprintf(
          '"pageSize":
            %d
                    ',
          self$`pageSize`
          )
        },
        if (!is.null(self$`pageNumber`)) {
          sprintf(
          '"pageNumber":
            %d
                    ',
          self$`pageNumber`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GetDatasets200Response
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetDatasets200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetDatasets200Response
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content` <- ApiClient$new()$deserializeObj(this_object$`content`, "array[Dataset]", loadNamespace("openapi"))
      self$`totalElements` <- this_object$`totalElements`
      self$`totalPages` <- this_object$`totalPages`
      self$`pageSize` <- this_object$`pageSize`
      self$`pageNumber` <- this_object$`pageNumber`
      self
    },
    #' Validate JSON input with respect to GetDatasets200Response
    #'
    #' @description
    #' Validate JSON input with respect to GetDatasets200Response and throw an exception if invalid
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
    #' @return String representation of GetDatasets200Response
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
# GetDatasets200Response$unlock()
#
## Below is an example to define the print function
# GetDatasets200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetDatasets200Response$lock()

