#' Create a new PartialUpdateOrganizationRequest
#'
#' @description
#' PartialUpdateOrganizationRequest Class
#'
#' @docType class
#' @title PartialUpdateOrganizationRequest
#' @description PartialUpdateOrganizationRequest Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field description  character [optional]
#' @field contactEmail  character
#' @field visibility  \link{OrganizationVisibility}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartialUpdateOrganizationRequest <- R6::R6Class(
  "PartialUpdateOrganizationRequest",
  public = list(
    `name` = NULL,
    `description` = NULL,
    `contactEmail` = NULL,
    `visibility` = NULL,
    #' Initialize a new PartialUpdateOrganizationRequest class.
    #'
    #' @description
    #' Initialize a new PartialUpdateOrganizationRequest class.
    #'
    #' @param name name
    #' @param contactEmail contactEmail
    #' @param visibility visibility
    #' @param description description
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `contactEmail`, `visibility`, `description` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`contactEmail`)) {
        if (!(is.character(`contactEmail`) && length(`contactEmail`) == 1)) {
          stop(paste("Error! Invalid data for `contactEmail`. Must be a string:", `contactEmail`))
        }
        self$`contactEmail` <- `contactEmail`
      }
      if (!missing(`visibility`)) {
        if (!(`visibility` %in% c())) {
          stop(paste("Error! \"", `visibility`, "\" cannot be assigned to `visibility`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`visibility`))
        self$`visibility` <- `visibility`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartialUpdateOrganizationRequest in JSON format
    #' @export
    toJSON = function() {
      PartialUpdateOrganizationRequestObject <- list()
      if (!is.null(self$`name`)) {
        PartialUpdateOrganizationRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        PartialUpdateOrganizationRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`contactEmail`)) {
        PartialUpdateOrganizationRequestObject[["contactEmail"]] <-
          self$`contactEmail`
      }
      if (!is.null(self$`visibility`)) {
        PartialUpdateOrganizationRequestObject[["visibility"]] <-
          self$`visibility`$toJSON()
      }
      PartialUpdateOrganizationRequestObject
    },
    #' Deserialize JSON string into an instance of PartialUpdateOrganizationRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartialUpdateOrganizationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartialUpdateOrganizationRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`contactEmail`)) {
        self$`contactEmail` <- this_object$`contactEmail`
      }
      if (!is.null(this_object$`visibility`)) {
        `visibility_object` <- OrganizationVisibility$new()
        `visibility_object`$fromJSON(jsonlite::toJSON(this_object$`visibility`, auto_unbox = TRUE, digits = NA))
        self$`visibility` <- `visibility_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartialUpdateOrganizationRequest in JSON format
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
        if (!is.null(self$`contactEmail`)) {
          sprintf(
          '"contactEmail":
            "%s"
                    ',
          self$`contactEmail`
          )
        },
        if (!is.null(self$`visibility`)) {
          sprintf(
          '"visibility":
          %s
          ',
          jsonlite::toJSON(self$`visibility`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PartialUpdateOrganizationRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartialUpdateOrganizationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartialUpdateOrganizationRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`contactEmail` <- this_object$`contactEmail`
      self$`visibility` <- OrganizationVisibility$new()$fromJSON(jsonlite::toJSON(this_object$`visibility`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to PartialUpdateOrganizationRequest
    #'
    #' @description
    #' Validate JSON input with respect to PartialUpdateOrganizationRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PartialUpdateOrganizationRequest: the required field `name` is missing."))
      }
      # check the required field `contactEmail`
      if (!is.null(input_json$`contactEmail`)) {
        if (!(is.character(input_json$`contactEmail`) && length(input_json$`contactEmail`) == 1)) {
          stop(paste("Error! Invalid data for `contactEmail`. Must be a string:", input_json$`contactEmail`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PartialUpdateOrganizationRequest: the required field `contactEmail` is missing."))
      }
      # check the required field `visibility`
      if (!is.null(input_json$`visibility`)) {
        stopifnot(R6::is.R6(input_json$`visibility`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PartialUpdateOrganizationRequest: the required field `visibility` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PartialUpdateOrganizationRequest
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

      # check if the required `contactEmail` is null
      if (is.null(self$`contactEmail`)) {
        return(FALSE)
      }

      # check if the required `visibility` is null
      if (is.null(self$`visibility`)) {
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

      # check if the required `contactEmail` is null
      if (is.null(self$`contactEmail`)) {
        invalid_fields["contactEmail"] <- "Non-nullable required field `contactEmail` cannot be null."
      }

      # check if the required `visibility` is null
      if (is.null(self$`visibility`)) {
        invalid_fields["visibility"] <- "Non-nullable required field `visibility` cannot be null."
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
# PartialUpdateOrganizationRequest$unlock()
#
## Below is an example to define the print function
# PartialUpdateOrganizationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PartialUpdateOrganizationRequest$lock()

