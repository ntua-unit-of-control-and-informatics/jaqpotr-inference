#' Create a new PartiallyUpdateModelFeatureRequest
#'
#' @description
#' PartiallyUpdateModelFeatureRequest Class
#'
#' @docType class
#' @title PartiallyUpdateModelFeatureRequest
#' @description PartiallyUpdateModelFeatureRequest Class
#' @format An \code{R6Class} generator object
#' @field name A name for the feature that will appear on top of the form field character
#' @field units The units that this feature is using character [optional]
#' @field description  character [optional]
#' @field featureType  \link{FeatureType}
#' @field possibleValues  list(\link{FeaturePossibleValue}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartiallyUpdateModelFeatureRequest <- R6::R6Class(
  "PartiallyUpdateModelFeatureRequest",
  public = list(
    `name` = NULL,
    `units` = NULL,
    `description` = NULL,
    `featureType` = NULL,
    `possibleValues` = NULL,
    #' Initialize a new PartiallyUpdateModelFeatureRequest class.
    #'
    #' @description
    #' Initialize a new PartiallyUpdateModelFeatureRequest class.
    #'
    #' @param name A name for the feature that will appear on top of the form field
    #' @param featureType featureType
    #' @param units The units that this feature is using
    #' @param description description
    #' @param possibleValues possibleValues
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `featureType`, `units` = NULL, `description` = NULL, `possibleValues` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`featureType`)) {
        if (!(`featureType` %in% c())) {
          stop(paste("Error! \"", `featureType`, "\" cannot be assigned to `featureType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`featureType`))
        self$`featureType` <- `featureType`
      }
      if (!is.null(`units`)) {
        if (!(is.character(`units`) && length(`units`) == 1)) {
          stop(paste("Error! Invalid data for `units`. Must be a string:", `units`))
        }
        self$`units` <- `units`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`possibleValues`)) {
        stopifnot(is.vector(`possibleValues`), length(`possibleValues`) != 0)
        sapply(`possibleValues`, function(x) stopifnot(R6::is.R6(x)))
        self$`possibleValues` <- `possibleValues`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartiallyUpdateModelFeatureRequest in JSON format
    #' @export
    toJSON = function() {
      PartiallyUpdateModelFeatureRequestObject <- list()
      if (!is.null(self$`name`)) {
        PartiallyUpdateModelFeatureRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`units`)) {
        PartiallyUpdateModelFeatureRequestObject[["units"]] <-
          self$`units`
      }
      if (!is.null(self$`description`)) {
        PartiallyUpdateModelFeatureRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`featureType`)) {
        PartiallyUpdateModelFeatureRequestObject[["featureType"]] <-
          self$`featureType`$toJSON()
      }
      if (!is.null(self$`possibleValues`)) {
        PartiallyUpdateModelFeatureRequestObject[["possibleValues"]] <-
          lapply(self$`possibleValues`, function(x) x$toJSON())
      }
      PartiallyUpdateModelFeatureRequestObject
    },
    #' Deserialize JSON string into an instance of PartiallyUpdateModelFeatureRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartiallyUpdateModelFeatureRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartiallyUpdateModelFeatureRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`units`)) {
        self$`units` <- this_object$`units`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`featureType`)) {
        `featuretype_object` <- FeatureType$new()
        `featuretype_object`$fromJSON(jsonlite::toJSON(this_object$`featureType`, auto_unbox = TRUE, digits = NA))
        self$`featureType` <- `featuretype_object`
      }
      if (!is.null(this_object$`possibleValues`)) {
        self$`possibleValues` <- ApiClient$new()$deserializeObj(this_object$`possibleValues`, "array[FeaturePossibleValue]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartiallyUpdateModelFeatureRequest in JSON format
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
        if (!is.null(self$`units`)) {
          sprintf(
          '"units":
            "%s"
                    ',
          self$`units`
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
        if (!is.null(self$`featureType`)) {
          sprintf(
          '"featureType":
          %s
          ',
          jsonlite::toJSON(self$`featureType`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`possibleValues`)) {
          sprintf(
          '"possibleValues":
          [%s]
',
          paste(sapply(self$`possibleValues`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PartiallyUpdateModelFeatureRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartiallyUpdateModelFeatureRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartiallyUpdateModelFeatureRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`units` <- this_object$`units`
      self$`description` <- this_object$`description`
      self$`featureType` <- FeatureType$new()$fromJSON(jsonlite::toJSON(this_object$`featureType`, auto_unbox = TRUE, digits = NA))
      self$`possibleValues` <- ApiClient$new()$deserializeObj(this_object$`possibleValues`, "array[FeaturePossibleValue]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to PartiallyUpdateModelFeatureRequest
    #'
    #' @description
    #' Validate JSON input with respect to PartiallyUpdateModelFeatureRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PartiallyUpdateModelFeatureRequest: the required field `name` is missing."))
      }
      # check the required field `featureType`
      if (!is.null(input_json$`featureType`)) {
        stopifnot(R6::is.R6(input_json$`featureType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PartiallyUpdateModelFeatureRequest: the required field `featureType` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PartiallyUpdateModelFeatureRequest
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

      if (nchar(self$`description`) > 2000) {
        return(FALSE)
      }

      # check if the required `featureType` is null
      if (is.null(self$`featureType`)) {
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

      if (nchar(self$`description`) > 2000) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 2000."
      }

      # check if the required `featureType` is null
      if (is.null(self$`featureType`)) {
        invalid_fields["featureType"] <- "Non-nullable required field `featureType` cannot be null."
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
# PartiallyUpdateModelFeatureRequest$unlock()
#
## Below is an example to define the print function
# PartiallyUpdateModelFeatureRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PartiallyUpdateModelFeatureRequest$lock()

