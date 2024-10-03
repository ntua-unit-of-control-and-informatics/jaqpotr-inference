#' Create a new PartiallyUpdateModelRequest
#'
#' @description
#' PartiallyUpdateModelRequest Class
#'
#' @docType class
#' @title PartiallyUpdateModelRequest
#' @description PartiallyUpdateModelRequest Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field description  character [optional]
#' @field visibility  \link{ModelVisibility}
#' @field task  \link{ModelTask}
#' @field tags  character [optional]
#' @field sharedWithOrganizationIds  list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartiallyUpdateModelRequest <- R6::R6Class(
  "PartiallyUpdateModelRequest",
  public = list(
    `name` = NULL,
    `description` = NULL,
    `visibility` = NULL,
    `task` = NULL,
    `tags` = NULL,
    `sharedWithOrganizationIds` = NULL,
    #' Initialize a new PartiallyUpdateModelRequest class.
    #'
    #' @description
    #' Initialize a new PartiallyUpdateModelRequest class.
    #'
    #' @param name name
    #' @param visibility visibility
    #' @param task task
    #' @param description description
    #' @param tags tags
    #' @param sharedWithOrganizationIds sharedWithOrganizationIds
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `visibility`, `task`, `description` = NULL, `tags` = NULL, `sharedWithOrganizationIds` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`visibility`)) {
        if (!(`visibility` %in% c())) {
          stop(paste("Error! \"", `visibility`, "\" cannot be assigned to `visibility`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`visibility`))
        self$`visibility` <- `visibility`
      }
      if (!missing(`task`)) {
        if (!(`task` %in% c())) {
          stop(paste("Error! \"", `task`, "\" cannot be assigned to `task`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`task`))
        self$`task` <- `task`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`tags`)) {
        if (!(is.character(`tags`) && length(`tags`) == 1)) {
          stop(paste("Error! Invalid data for `tags`. Must be a string:", `tags`))
        }
        self$`tags` <- `tags`
      }
      if (!is.null(`sharedWithOrganizationIds`)) {
        stopifnot(is.vector(`sharedWithOrganizationIds`), length(`sharedWithOrganizationIds`) != 0)
        sapply(`sharedWithOrganizationIds`, function(x) stopifnot(is.character(x)))
        self$`sharedWithOrganizationIds` <- `sharedWithOrganizationIds`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartiallyUpdateModelRequest in JSON format
    #' @export
    toJSON = function() {
      PartiallyUpdateModelRequestObject <- list()
      if (!is.null(self$`name`)) {
        PartiallyUpdateModelRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        PartiallyUpdateModelRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`visibility`)) {
        PartiallyUpdateModelRequestObject[["visibility"]] <-
          self$`visibility`$toJSON()
      }
      if (!is.null(self$`task`)) {
        PartiallyUpdateModelRequestObject[["task"]] <-
          self$`task`$toJSON()
      }
      if (!is.null(self$`tags`)) {
        PartiallyUpdateModelRequestObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`sharedWithOrganizationIds`)) {
        PartiallyUpdateModelRequestObject[["sharedWithOrganizationIds"]] <-
          self$`sharedWithOrganizationIds`
      }
      PartiallyUpdateModelRequestObject
    },
    #' Deserialize JSON string into an instance of PartiallyUpdateModelRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartiallyUpdateModelRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartiallyUpdateModelRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`visibility`)) {
        `visibility_object` <- ModelVisibility$new()
        `visibility_object`$fromJSON(jsonlite::toJSON(this_object$`visibility`, auto_unbox = TRUE, digits = NA))
        self$`visibility` <- `visibility_object`
      }
      if (!is.null(this_object$`task`)) {
        `task_object` <- ModelTask$new()
        `task_object`$fromJSON(jsonlite::toJSON(this_object$`task`, auto_unbox = TRUE, digits = NA))
        self$`task` <- `task_object`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- this_object$`tags`
      }
      if (!is.null(this_object$`sharedWithOrganizationIds`)) {
        self$`sharedWithOrganizationIds` <- ApiClient$new()$deserializeObj(this_object$`sharedWithOrganizationIds`, "array[integer]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartiallyUpdateModelRequest in JSON format
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`visibility`)) {
          sprintf(
          '"visibility":
          %s
          ',
          jsonlite::toJSON(self$`visibility`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`task`)) {
          sprintf(
          '"task":
          %s
          ',
          jsonlite::toJSON(self$`task`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`tags`)) {
          sprintf(
          '"tags":
            "%s"
                    ',
          self$`tags`
          )
        },
        if (!is.null(self$`sharedWithOrganizationIds`)) {
          sprintf(
          '"sharedWithOrganizationIds":
             [%s]
          ',
          paste(unlist(lapply(self$`sharedWithOrganizationIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PartiallyUpdateModelRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartiallyUpdateModelRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartiallyUpdateModelRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`visibility` <- ModelVisibility$new()$fromJSON(jsonlite::toJSON(this_object$`visibility`, auto_unbox = TRUE, digits = NA))
      self$`task` <- ModelTask$new()$fromJSON(jsonlite::toJSON(this_object$`task`, auto_unbox = TRUE, digits = NA))
      self$`tags` <- this_object$`tags`
      self$`sharedWithOrganizationIds` <- ApiClient$new()$deserializeObj(this_object$`sharedWithOrganizationIds`, "array[integer]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to PartiallyUpdateModelRequest
    #'
    #' @description
    #' Validate JSON input with respect to PartiallyUpdateModelRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PartiallyUpdateModelRequest: the required field `name` is missing."))
      }
      # check the required field `visibility`
      if (!is.null(input_json$`visibility`)) {
        stopifnot(R6::is.R6(input_json$`visibility`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PartiallyUpdateModelRequest: the required field `visibility` is missing."))
      }
      # check the required field `task`
      if (!is.null(input_json$`task`)) {
        stopifnot(R6::is.R6(input_json$`task`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PartiallyUpdateModelRequest: the required field `task` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PartiallyUpdateModelRequest
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

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 3) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 50000) {
        return(FALSE)
      }
      if (nchar(self$`description`) < 3) {
        return(FALSE)
      }

      # check if the required `visibility` is null
      if (is.null(self$`visibility`)) {
        return(FALSE)
      }

      # check if the required `task` is null
      if (is.null(self$`task`)) {
        return(FALSE)
      }

      if (nchar(self$`tags`) > 1000) {
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

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }
      if (nchar(self$`name`) < 3) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 3."
      }

      if (nchar(self$`description`) > 50000) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 50000."
      }
      if (nchar(self$`description`) < 3) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 3."
      }

      # check if the required `visibility` is null
      if (is.null(self$`visibility`)) {
        invalid_fields["visibility"] <- "Non-nullable required field `visibility` cannot be null."
      }

      # check if the required `task` is null
      if (is.null(self$`task`)) {
        invalid_fields["task"] <- "Non-nullable required field `task` cannot be null."
      }

      if (nchar(self$`tags`) > 1000) {
        invalid_fields["tags"] <- "Invalid length for `tags`, must be smaller than or equal to 1000."
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
# PartiallyUpdateModelRequest$unlock()
#
## Below is an example to define the print function
# PartiallyUpdateModelRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PartiallyUpdateModelRequest$lock()

