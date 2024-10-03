#' Create a new Feature
#'
#' @description
#' Feature Class
#'
#' @docType class
#' @title Feature
#' @description Feature Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field meta A JSON object containing meta information. named list(object) [optional]
#' @field key A key that must start with a letter, followed by any combination of letters, digits, hyphens, or underscores. For example, 'abc123', 'abc-test', or 'Abc_test'. It cannot start with a digit. character
#' @field name A name for the feature that will appear on top of the form field character
#' @field units A name for the feature that will appear on top of the form field character [optional]
#' @field description  character [optional]
#' @field featureType  \link{FeatureType}
#' @field featureDependency  character [optional]
#' @field visible  character [optional]
#' @field possibleValues  list(\link{FeaturePossibleValue}) [optional]
#' @field createdAt The date and time when the feature was created. character [optional]
#' @field updatedAt The date and time when the feature was last updated. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Feature <- R6::R6Class(
  "Feature",
  public = list(
    `id` = NULL,
    `meta` = NULL,
    `key` = NULL,
    `name` = NULL,
    `units` = NULL,
    `description` = NULL,
    `featureType` = NULL,
    `featureDependency` = NULL,
    `visible` = NULL,
    `possibleValues` = NULL,
    `createdAt` = NULL,
    `updatedAt` = NULL,
    #' Initialize a new Feature class.
    #'
    #' @description
    #' Initialize a new Feature class.
    #'
    #' @param key A key that must start with a letter, followed by any combination of letters, digits, hyphens, or underscores. For example, 'abc123', 'abc-test', or 'Abc_test'. It cannot start with a digit.
    #' @param name A name for the feature that will appear on top of the form field
    #' @param featureType featureType
    #' @param id id
    #' @param meta A JSON object containing meta information.
    #' @param units A name for the feature that will appear on top of the form field
    #' @param description description
    #' @param featureDependency featureDependency
    #' @param visible visible
    #' @param possibleValues possibleValues
    #' @param createdAt The date and time when the feature was created.
    #' @param updatedAt The date and time when the feature was last updated.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`key`, `name`, `featureType`, `id` = NULL, `meta` = NULL, `units` = NULL, `description` = NULL, `featureDependency` = NULL, `visible` = NULL, `possibleValues` = NULL, `createdAt` = NULL, `updatedAt` = NULL, ...) {
      if (!missing(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
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
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`meta`)) {
        stopifnot(is.vector(`meta`), length(`meta`) != 0)
        sapply(`meta`, function(x) stopifnot(is.character(x)))
        self$`meta` <- `meta`
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
      if (!is.null(`featureDependency`)) {
        if (!(`featureDependency` %in% c("DEPENDENT", "INDEPENDENT"))) {
          stop(paste("Error! \"", `featureDependency`, "\" cannot be assigned to `featureDependency`. Must be \"DEPENDENT\", \"INDEPENDENT\".", sep = ""))
        }
        if (!(is.character(`featureDependency`) && length(`featureDependency`) == 1)) {
          stop(paste("Error! Invalid data for `featureDependency`. Must be a string:", `featureDependency`))
        }
        self$`featureDependency` <- `featureDependency`
      }
      if (!is.null(`visible`)) {
        if (!(is.logical(`visible`) && length(`visible`) == 1)) {
          stop(paste("Error! Invalid data for `visible`. Must be a boolean:", `visible`))
        }
        self$`visible` <- `visible`
      }
      if (!is.null(`possibleValues`)) {
        stopifnot(is.vector(`possibleValues`), length(`possibleValues`) != 0)
        sapply(`possibleValues`, function(x) stopifnot(R6::is.R6(x)))
        self$`possibleValues` <- `possibleValues`
      }
      if (!is.null(`createdAt`)) {
        if (!is.character(`createdAt`)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!is.null(`updatedAt`)) {
        if (!(is.character(`updatedAt`) && length(`updatedAt`) == 1)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Feature in JSON format
    #' @export
    toJSON = function() {
      FeatureObject <- list()
      if (!is.null(self$`id`)) {
        FeatureObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`meta`)) {
        FeatureObject[["meta"]] <-
          self$`meta`
      }
      if (!is.null(self$`key`)) {
        FeatureObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`name`)) {
        FeatureObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`units`)) {
        FeatureObject[["units"]] <-
          self$`units`
      }
      if (!is.null(self$`description`)) {
        FeatureObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`featureType`)) {
        FeatureObject[["featureType"]] <-
          self$`featureType`$toJSON()
      }
      if (!is.null(self$`featureDependency`)) {
        FeatureObject[["featureDependency"]] <-
          self$`featureDependency`
      }
      if (!is.null(self$`visible`)) {
        FeatureObject[["visible"]] <-
          self$`visible`
      }
      if (!is.null(self$`possibleValues`)) {
        FeatureObject[["possibleValues"]] <-
          lapply(self$`possibleValues`, function(x) x$toJSON())
      }
      if (!is.null(self$`createdAt`)) {
        FeatureObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`updatedAt`)) {
        FeatureObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      FeatureObject
    },
    #' Deserialize JSON string into an instance of Feature
    #'
    #' @description
    #' Deserialize JSON string into an instance of Feature
    #'
    #' @param input_json the JSON input
    #' @return the instance of Feature
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`meta`)) {
        self$`meta` <- ApiClient$new()$deserializeObj(this_object$`meta`, "map(object)", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
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
      if (!is.null(this_object$`featureDependency`)) {
        if (!is.null(this_object$`featureDependency`) && !(this_object$`featureDependency` %in% c("DEPENDENT", "INDEPENDENT"))) {
          stop(paste("Error! \"", this_object$`featureDependency`, "\" cannot be assigned to `featureDependency`. Must be \"DEPENDENT\", \"INDEPENDENT\".", sep = ""))
        }
        self$`featureDependency` <- this_object$`featureDependency`
      }
      if (!is.null(this_object$`visible`)) {
        self$`visible` <- this_object$`visible`
      }
      if (!is.null(this_object$`possibleValues`)) {
        self$`possibleValues` <- ApiClient$new()$deserializeObj(this_object$`possibleValues`, "array[FeaturePossibleValue]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Feature in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`meta`)) {
          sprintf(
          '"meta":
            %s
          ',
          jsonlite::toJSON(lapply(self$`meta`, function(x){ x }), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`key`)) {
          sprintf(
          '"key":
            "%s"
                    ',
          self$`key`
          )
        },
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
        if (!is.null(self$`featureDependency`)) {
          sprintf(
          '"featureDependency":
            "%s"
                    ',
          self$`featureDependency`
          )
        },
        if (!is.null(self$`visible`)) {
          sprintf(
          '"visible":
            %s
                    ',
          tolower(self$`visible`)
          )
        },
        if (!is.null(self$`possibleValues`)) {
          sprintf(
          '"possibleValues":
          [%s]
',
          paste(sapply(self$`possibleValues`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`createdAt`)) {
          sprintf(
          '"createdAt":
            "%s"
                    ',
          self$`createdAt`
          )
        },
        if (!is.null(self$`updatedAt`)) {
          sprintf(
          '"updatedAt":
            "%s"
                    ',
          self$`updatedAt`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Feature
    #'
    #' @description
    #' Deserialize JSON string into an instance of Feature
    #'
    #' @param input_json the JSON input
    #' @return the instance of Feature
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`meta` <- ApiClient$new()$deserializeObj(this_object$`meta`, "map(object)", loadNamespace("openapi"))
      self$`key` <- this_object$`key`
      self$`name` <- this_object$`name`
      self$`units` <- this_object$`units`
      self$`description` <- this_object$`description`
      self$`featureType` <- FeatureType$new()$fromJSON(jsonlite::toJSON(this_object$`featureType`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`featureDependency`) && !(this_object$`featureDependency` %in% c("DEPENDENT", "INDEPENDENT"))) {
        stop(paste("Error! \"", this_object$`featureDependency`, "\" cannot be assigned to `featureDependency`. Must be \"DEPENDENT\", \"INDEPENDENT\".", sep = ""))
      }
      self$`featureDependency` <- this_object$`featureDependency`
      self$`visible` <- this_object$`visible`
      self$`possibleValues` <- ApiClient$new()$deserializeObj(this_object$`possibleValues`, "array[FeaturePossibleValue]", loadNamespace("openapi"))
      self$`createdAt` <- this_object$`createdAt`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },
    #' Validate JSON input with respect to Feature
    #'
    #' @description
    #' Validate JSON input with respect to Feature and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `key`
      if (!is.null(input_json$`key`)) {
        if (!(is.character(input_json$`key`) && length(input_json$`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", input_json$`key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Feature: the required field `key` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Feature: the required field `name` is missing."))
      }
      # check the required field `featureType`
      if (!is.null(input_json$`featureType`)) {
        stopifnot(R6::is.R6(input_json$`featureType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Feature: the required field `featureType` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Feature
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
      # check if the required `key` is null
      if (is.null(self$`key`)) {
        return(FALSE)
      }

      if (!str_detect(self$`key`, "^[a-zA-Z][a-zA-Z0-9_-]*$")) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }

      if (nchar(self$`units`) > 255) {
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
      # check if the required `key` is null
      if (is.null(self$`key`)) {
        invalid_fields["key"] <- "Non-nullable required field `key` cannot be null."
      }

      if (!str_detect(self$`key`, "^[a-zA-Z][a-zA-Z0-9_-]*$")) {
        invalid_fields["key"] <- "Invalid value for `key`, must conform to the pattern ^[a-zA-Z][a-zA-Z0-9_-]*$."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }

      if (nchar(self$`units`) > 255) {
        invalid_fields["units"] <- "Invalid length for `units`, must be smaller than or equal to 255."
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
# Feature$unlock()
#
## Below is an example to define the print function
# Feature$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Feature$lock()

