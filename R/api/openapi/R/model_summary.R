#' Create a new ModelSummary
#'
#' @description
#' ModelSummary Class
#'
#' @docType class
#' @title ModelSummary
#' @description ModelSummary Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character
#' @field visibility  \link{ModelVisibility}
#' @field description  character [optional]
#' @field creator  \link{User} [optional]
#' @field type  \link{ModelType}
#' @field dependentFeaturesLength  integer [optional]
#' @field independentFeaturesLength  integer [optional]
#' @field sharedWithOrganizations  list(\link{OrganizationSummary})
#' @field createdAt The date and time when the feature was created. character
#' @field updatedAt The date and time when the feature was last updated. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelSummary <- R6::R6Class(
  "ModelSummary",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `visibility` = NULL,
    `description` = NULL,
    `creator` = NULL,
    `type` = NULL,
    `dependentFeaturesLength` = NULL,
    `independentFeaturesLength` = NULL,
    `sharedWithOrganizations` = NULL,
    `createdAt` = NULL,
    `updatedAt` = NULL,
    #' Initialize a new ModelSummary class.
    #'
    #' @description
    #' Initialize a new ModelSummary class.
    #'
    #' @param id id
    #' @param name name
    #' @param visibility visibility
    #' @param type type
    #' @param sharedWithOrganizations sharedWithOrganizations
    #' @param createdAt The date and time when the feature was created.
    #' @param description description
    #' @param creator creator
    #' @param dependentFeaturesLength dependentFeaturesLength
    #' @param independentFeaturesLength independentFeaturesLength
    #' @param updatedAt The date and time when the feature was last updated.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id`, `name`, `visibility`, `type`, `sharedWithOrganizations`, `createdAt`, `description` = NULL, `creator` = NULL, `dependentFeaturesLength` = NULL, `independentFeaturesLength` = NULL, `updatedAt` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
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
      if (!missing(`type`)) {
        if (!(`type` %in% c())) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!missing(`sharedWithOrganizations`)) {
        stopifnot(is.vector(`sharedWithOrganizations`), length(`sharedWithOrganizations`) != 0)
        sapply(`sharedWithOrganizations`, function(x) stopifnot(R6::is.R6(x)))
        self$`sharedWithOrganizations` <- `sharedWithOrganizations`
      }
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`creator`)) {
        stopifnot(R6::is.R6(`creator`))
        self$`creator` <- `creator`
      }
      if (!is.null(`dependentFeaturesLength`)) {
        if (!(is.numeric(`dependentFeaturesLength`) && length(`dependentFeaturesLength`) == 1)) {
          stop(paste("Error! Invalid data for `dependentFeaturesLength`. Must be an integer:", `dependentFeaturesLength`))
        }
        self$`dependentFeaturesLength` <- `dependentFeaturesLength`
      }
      if (!is.null(`independentFeaturesLength`)) {
        if (!(is.numeric(`independentFeaturesLength`) && length(`independentFeaturesLength`) == 1)) {
          stop(paste("Error! Invalid data for `independentFeaturesLength`. Must be an integer:", `independentFeaturesLength`))
        }
        self$`independentFeaturesLength` <- `independentFeaturesLength`
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
    #' @return ModelSummary in JSON format
    #' @export
    toJSON = function() {
      ModelSummaryObject <- list()
      if (!is.null(self$`id`)) {
        ModelSummaryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ModelSummaryObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`visibility`)) {
        ModelSummaryObject[["visibility"]] <-
          self$`visibility`$toJSON()
      }
      if (!is.null(self$`description`)) {
        ModelSummaryObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`creator`)) {
        ModelSummaryObject[["creator"]] <-
          self$`creator`$toJSON()
      }
      if (!is.null(self$`type`)) {
        ModelSummaryObject[["type"]] <-
          self$`type`$toJSON()
      }
      if (!is.null(self$`dependentFeaturesLength`)) {
        ModelSummaryObject[["dependentFeaturesLength"]] <-
          self$`dependentFeaturesLength`
      }
      if (!is.null(self$`independentFeaturesLength`)) {
        ModelSummaryObject[["independentFeaturesLength"]] <-
          self$`independentFeaturesLength`
      }
      if (!is.null(self$`sharedWithOrganizations`)) {
        ModelSummaryObject[["sharedWithOrganizations"]] <-
          lapply(self$`sharedWithOrganizations`, function(x) x$toJSON())
      }
      if (!is.null(self$`createdAt`)) {
        ModelSummaryObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`updatedAt`)) {
        ModelSummaryObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      ModelSummaryObject
    },
    #' Deserialize JSON string into an instance of ModelSummary
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelSummary
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`visibility`)) {
        `visibility_object` <- ModelVisibility$new()
        `visibility_object`$fromJSON(jsonlite::toJSON(this_object$`visibility`, auto_unbox = TRUE, digits = NA))
        self$`visibility` <- `visibility_object`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`creator`)) {
        `creator_object` <- User$new()
        `creator_object`$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
        self$`creator` <- `creator_object`
      }
      if (!is.null(this_object$`type`)) {
        `type_object` <- ModelType$new()
        `type_object`$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
        self$`type` <- `type_object`
      }
      if (!is.null(this_object$`dependentFeaturesLength`)) {
        self$`dependentFeaturesLength` <- this_object$`dependentFeaturesLength`
      }
      if (!is.null(this_object$`independentFeaturesLength`)) {
        self$`independentFeaturesLength` <- this_object$`independentFeaturesLength`
      }
      if (!is.null(this_object$`sharedWithOrganizations`)) {
        self$`sharedWithOrganizations` <- ApiClient$new()$deserializeObj(this_object$`sharedWithOrganizations`, "array[OrganizationSummary]", loadNamespace("openapi"))
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
    #' @return ModelSummary in JSON format
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`creator`)) {
          sprintf(
          '"creator":
          %s
          ',
          jsonlite::toJSON(self$`creator`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
          %s
          ',
          jsonlite::toJSON(self$`type`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`dependentFeaturesLength`)) {
          sprintf(
          '"dependentFeaturesLength":
            %d
                    ',
          self$`dependentFeaturesLength`
          )
        },
        if (!is.null(self$`independentFeaturesLength`)) {
          sprintf(
          '"independentFeaturesLength":
            %d
                    ',
          self$`independentFeaturesLength`
          )
        },
        if (!is.null(self$`sharedWithOrganizations`)) {
          sprintf(
          '"sharedWithOrganizations":
          [%s]
',
          paste(sapply(self$`sharedWithOrganizations`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of ModelSummary
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelSummary
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`visibility` <- ModelVisibility$new()$fromJSON(jsonlite::toJSON(this_object$`visibility`, auto_unbox = TRUE, digits = NA))
      self$`description` <- this_object$`description`
      self$`creator` <- User$new()$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
      self$`type` <- ModelType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self$`dependentFeaturesLength` <- this_object$`dependentFeaturesLength`
      self$`independentFeaturesLength` <- this_object$`independentFeaturesLength`
      self$`sharedWithOrganizations` <- ApiClient$new()$deserializeObj(this_object$`sharedWithOrganizations`, "array[OrganizationSummary]", loadNamespace("openapi"))
      self$`createdAt` <- this_object$`createdAt`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },
    #' Validate JSON input with respect to ModelSummary
    #'
    #' @description
    #' Validate JSON input with respect to ModelSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModelSummary: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModelSummary: the required field `name` is missing."))
      }
      # check the required field `visibility`
      if (!is.null(input_json$`visibility`)) {
        stopifnot(R6::is.R6(input_json$`visibility`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModelSummary: the required field `visibility` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(R6::is.R6(input_json$`type`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModelSummary: the required field `type` is missing."))
      }
      # check the required field `sharedWithOrganizations`
      if (!is.null(input_json$`sharedWithOrganizations`)) {
        stopifnot(is.vector(input_json$`sharedWithOrganizations`), length(input_json$`sharedWithOrganizations`) != 0)
        tmp <- sapply(input_json$`sharedWithOrganizations`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModelSummary: the required field `sharedWithOrganizations` is missing."))
      }
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModelSummary: the required field `createdAt` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ModelSummary
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

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

      # check if the required `visibility` is null
      if (is.null(self$`visibility`)) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 50000) {
        return(FALSE)
      }
      if (nchar(self$`description`) < 3) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `sharedWithOrganizations` is null
      if (is.null(self$`sharedWithOrganizations`)) {
        return(FALSE)
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

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

      # check if the required `visibility` is null
      if (is.null(self$`visibility`)) {
        invalid_fields["visibility"] <- "Non-nullable required field `visibility` cannot be null."
      }

      if (nchar(self$`description`) > 50000) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 50000."
      }
      if (nchar(self$`description`) < 3) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 3."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `sharedWithOrganizations` is null
      if (is.null(self$`sharedWithOrganizations`)) {
        invalid_fields["sharedWithOrganizations"] <- "Non-nullable required field `sharedWithOrganizations` cannot be null."
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
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
# ModelSummary$unlock()
#
## Below is an example to define the print function
# ModelSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ModelSummary$lock()

