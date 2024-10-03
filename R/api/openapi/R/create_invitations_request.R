#' Create a new CreateInvitationsRequest
#'
#' @description
#' CreateInvitationsRequest Class
#'
#' @docType class
#' @title CreateInvitationsRequest
#' @description CreateInvitationsRequest Class
#' @format An \code{R6Class} generator object
#' @field emails List of email addresses to invite list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateInvitationsRequest <- R6::R6Class(
  "CreateInvitationsRequest",
  public = list(
    `emails` = NULL,
    #' Initialize a new CreateInvitationsRequest class.
    #'
    #' @description
    #' Initialize a new CreateInvitationsRequest class.
    #'
    #' @param emails List of email addresses to invite
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`emails` = NULL, ...) {
      if (!is.null(`emails`)) {
        stopifnot(is.vector(`emails`), length(`emails`) != 0)
        sapply(`emails`, function(x) stopifnot(is.character(x)))
        self$`emails` <- `emails`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateInvitationsRequest in JSON format
    #' @export
    toJSON = function() {
      CreateInvitationsRequestObject <- list()
      if (!is.null(self$`emails`)) {
        CreateInvitationsRequestObject[["emails"]] <-
          self$`emails`
      }
      CreateInvitationsRequestObject
    },
    #' Deserialize JSON string into an instance of CreateInvitationsRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateInvitationsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateInvitationsRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`emails`)) {
        self$`emails` <- ApiClient$new()$deserializeObj(this_object$`emails`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateInvitationsRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`emails`)) {
          sprintf(
          '"emails":
             [%s]
          ',
          paste(unlist(lapply(self$`emails`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateInvitationsRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateInvitationsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateInvitationsRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`emails` <- ApiClient$new()$deserializeObj(this_object$`emails`, "array[character]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to CreateInvitationsRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateInvitationsRequest and throw an exception if invalid
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
    #' @return String representation of CreateInvitationsRequest
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
      if (length(self$`emails`) > 10) {
        return(FALSE)
      }
      if (length(self$`emails`) < 1) {
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
      if (length(self$`emails`) > 10) {
        invalid_fields["emails"] <- "Invalid length for `emails`, number of items must be less than or equal to 10."
      }
      if (length(self$`emails`) < 1) {
        invalid_fields["emails"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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
# CreateInvitationsRequest$unlock()
#
## Below is an example to define the print function
# CreateInvitationsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateInvitationsRequest$lock()

