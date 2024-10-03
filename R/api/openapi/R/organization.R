#' Create a new Organization
#'
#' @description
#' Organization Class
#'
#' @docType class
#' @title Organization
#' @description Organization Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character
#' @field creator  \link{User} [optional]
#' @field visibility  \link{OrganizationVisibility}
#' @field description  character [optional]
#' @field organizationMembers  list(\link{OrganizationUser}) [optional]
#' @field contactEmail  character
#' @field contactPhone  character [optional]
#' @field website  character [optional]
#' @field address  character [optional]
#' @field canEdit If the current user can edit the organization character [optional]
#' @field isMember If the current user is a member of the organization character [optional]
#' @field created_at  character [optional]
#' @field updated_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Organization <- R6::R6Class(
  "Organization",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `creator` = NULL,
    `visibility` = NULL,
    `description` = NULL,
    `organizationMembers` = NULL,
    `contactEmail` = NULL,
    `contactPhone` = NULL,
    `website` = NULL,
    `address` = NULL,
    `canEdit` = NULL,
    `isMember` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,
    #' Initialize a new Organization class.
    #'
    #' @description
    #' Initialize a new Organization class.
    #'
    #' @param name name
    #' @param visibility visibility
    #' @param contactEmail contactEmail
    #' @param id id
    #' @param creator creator
    #' @param description description
    #' @param organizationMembers organizationMembers
    #' @param contactPhone contactPhone
    #' @param website website
    #' @param address address
    #' @param canEdit If the current user can edit the organization
    #' @param isMember If the current user is a member of the organization
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `visibility`, `contactEmail`, `id` = NULL, `creator` = NULL, `description` = NULL, `organizationMembers` = NULL, `contactPhone` = NULL, `website` = NULL, `address` = NULL, `canEdit` = NULL, `isMember` = NULL, `created_at` = NULL, `updated_at` = NULL, ...) {
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
      if (!missing(`contactEmail`)) {
        if (!(is.character(`contactEmail`) && length(`contactEmail`) == 1)) {
          stop(paste("Error! Invalid data for `contactEmail`. Must be a string:", `contactEmail`))
        }
        self$`contactEmail` <- `contactEmail`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`creator`)) {
        stopifnot(R6::is.R6(`creator`))
        self$`creator` <- `creator`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`organizationMembers`)) {
        stopifnot(is.vector(`organizationMembers`), length(`organizationMembers`) != 0)
        sapply(`organizationMembers`, function(x) stopifnot(R6::is.R6(x)))
        self$`organizationMembers` <- `organizationMembers`
      }
      if (!is.null(`contactPhone`)) {
        if (!(is.character(`contactPhone`) && length(`contactPhone`) == 1)) {
          stop(paste("Error! Invalid data for `contactPhone`. Must be a string:", `contactPhone`))
        }
        self$`contactPhone` <- `contactPhone`
      }
      if (!is.null(`website`)) {
        if (!(is.character(`website`) && length(`website`) == 1)) {
          stop(paste("Error! Invalid data for `website`. Must be a string:", `website`))
        }
        self$`website` <- `website`
      }
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`canEdit`)) {
        if (!(is.logical(`canEdit`) && length(`canEdit`) == 1)) {
          stop(paste("Error! Invalid data for `canEdit`. Must be a boolean:", `canEdit`))
        }
        self$`canEdit` <- `canEdit`
      }
      if (!is.null(`isMember`)) {
        if (!(is.logical(`isMember`) && length(`isMember`) == 1)) {
          stop(paste("Error! Invalid data for `isMember`. Must be a boolean:", `isMember`))
        }
        self$`isMember` <- `isMember`
      }
      if (!is.null(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Organization in JSON format
    #' @export
    toJSON = function() {
      OrganizationObject <- list()
      if (!is.null(self$`id`)) {
        OrganizationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        OrganizationObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`creator`)) {
        OrganizationObject[["creator"]] <-
          self$`creator`$toJSON()
      }
      if (!is.null(self$`visibility`)) {
        OrganizationObject[["visibility"]] <-
          self$`visibility`$toJSON()
      }
      if (!is.null(self$`description`)) {
        OrganizationObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`organizationMembers`)) {
        OrganizationObject[["organizationMembers"]] <-
          lapply(self$`organizationMembers`, function(x) x$toJSON())
      }
      if (!is.null(self$`contactEmail`)) {
        OrganizationObject[["contactEmail"]] <-
          self$`contactEmail`
      }
      if (!is.null(self$`contactPhone`)) {
        OrganizationObject[["contactPhone"]] <-
          self$`contactPhone`
      }
      if (!is.null(self$`website`)) {
        OrganizationObject[["website"]] <-
          self$`website`
      }
      if (!is.null(self$`address`)) {
        OrganizationObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`canEdit`)) {
        OrganizationObject[["canEdit"]] <-
          self$`canEdit`
      }
      if (!is.null(self$`isMember`)) {
        OrganizationObject[["isMember"]] <-
          self$`isMember`
      }
      if (!is.null(self$`created_at`)) {
        OrganizationObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        OrganizationObject[["updated_at"]] <-
          self$`updated_at`
      }
      OrganizationObject
    },
    #' Deserialize JSON string into an instance of Organization
    #'
    #' @description
    #' Deserialize JSON string into an instance of Organization
    #'
    #' @param input_json the JSON input
    #' @return the instance of Organization
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`creator`)) {
        `creator_object` <- User$new()
        `creator_object`$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
        self$`creator` <- `creator_object`
      }
      if (!is.null(this_object$`visibility`)) {
        `visibility_object` <- OrganizationVisibility$new()
        `visibility_object`$fromJSON(jsonlite::toJSON(this_object$`visibility`, auto_unbox = TRUE, digits = NA))
        self$`visibility` <- `visibility_object`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`organizationMembers`)) {
        self$`organizationMembers` <- ApiClient$new()$deserializeObj(this_object$`organizationMembers`, "array[OrganizationUser]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`contactEmail`)) {
        self$`contactEmail` <- this_object$`contactEmail`
      }
      if (!is.null(this_object$`contactPhone`)) {
        self$`contactPhone` <- this_object$`contactPhone`
      }
      if (!is.null(this_object$`website`)) {
        self$`website` <- this_object$`website`
      }
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`canEdit`)) {
        self$`canEdit` <- this_object$`canEdit`
      }
      if (!is.null(this_object$`isMember`)) {
        self$`isMember` <- this_object$`isMember`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Organization in JSON format
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
        if (!is.null(self$`creator`)) {
          sprintf(
          '"creator":
          %s
          ',
          jsonlite::toJSON(self$`creator`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`organizationMembers`)) {
          sprintf(
          '"organizationMembers":
          [%s]
',
          paste(sapply(self$`organizationMembers`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
        if (!is.null(self$`contactPhone`)) {
          sprintf(
          '"contactPhone":
            "%s"
                    ',
          self$`contactPhone`
          )
        },
        if (!is.null(self$`website`)) {
          sprintf(
          '"website":
            "%s"
                    ',
          self$`website`
          )
        },
        if (!is.null(self$`address`)) {
          sprintf(
          '"address":
            "%s"
                    ',
          self$`address`
          )
        },
        if (!is.null(self$`canEdit`)) {
          sprintf(
          '"canEdit":
            %s
                    ',
          tolower(self$`canEdit`)
          )
        },
        if (!is.null(self$`isMember`)) {
          sprintf(
          '"isMember":
            %s
                    ',
          tolower(self$`isMember`)
          )
        },
        if (!is.null(self$`created_at`)) {
          sprintf(
          '"created_at":
            "%s"
                    ',
          self$`created_at`
          )
        },
        if (!is.null(self$`updated_at`)) {
          sprintf(
          '"updated_at":
            "%s"
                    ',
          self$`updated_at`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Organization
    #'
    #' @description
    #' Deserialize JSON string into an instance of Organization
    #'
    #' @param input_json the JSON input
    #' @return the instance of Organization
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`creator` <- User$new()$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
      self$`visibility` <- OrganizationVisibility$new()$fromJSON(jsonlite::toJSON(this_object$`visibility`, auto_unbox = TRUE, digits = NA))
      self$`description` <- this_object$`description`
      self$`organizationMembers` <- ApiClient$new()$deserializeObj(this_object$`organizationMembers`, "array[OrganizationUser]", loadNamespace("openapi"))
      self$`contactEmail` <- this_object$`contactEmail`
      self$`contactPhone` <- this_object$`contactPhone`
      self$`website` <- this_object$`website`
      self$`address` <- this_object$`address`
      self$`canEdit` <- this_object$`canEdit`
      self$`isMember` <- this_object$`isMember`
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self
    },
    #' Validate JSON input with respect to Organization
    #'
    #' @description
    #' Validate JSON input with respect to Organization and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Organization: the required field `name` is missing."))
      }
      # check the required field `visibility`
      if (!is.null(input_json$`visibility`)) {
        stopifnot(R6::is.R6(input_json$`visibility`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Organization: the required field `visibility` is missing."))
      }
      # check the required field `contactEmail`
      if (!is.null(input_json$`contactEmail`)) {
        if (!(is.character(input_json$`contactEmail`) && length(input_json$`contactEmail`) == 1)) {
          stop(paste("Error! Invalid data for `contactEmail`. Must be a string:", input_json$`contactEmail`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Organization: the required field `contactEmail` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Organization
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

      if (nchar(self$`name`) > 200) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 3) {
        return(FALSE)
      }
      if (!str_detect(self$`name`, "[\\w\\-_]+")) {
        return(FALSE)
      }

      # check if the required `visibility` is null
      if (is.null(self$`visibility`)) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 2000) {
        return(FALSE)
      }
      if (nchar(self$`description`) < 3) {
        return(FALSE)
      }

      # check if the required `contactEmail` is null
      if (is.null(self$`contactEmail`)) {
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

      if (nchar(self$`name`) > 200) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 200."
      }
      if (nchar(self$`name`) < 3) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 3."
      }
      if (!str_detect(self$`name`, "[\\w\\-_]+")) {
        invalid_fields["name"] <- "Invalid value for `name`, must conform to the pattern [\\w\\-_]+."
      }

      # check if the required `visibility` is null
      if (is.null(self$`visibility`)) {
        invalid_fields["visibility"] <- "Non-nullable required field `visibility` cannot be null."
      }

      if (nchar(self$`description`) > 2000) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 2000."
      }
      if (nchar(self$`description`) < 3) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 3."
      }

      # check if the required `contactEmail` is null
      if (is.null(self$`contactEmail`)) {
        invalid_fields["contactEmail"] <- "Non-nullable required field `contactEmail` cannot be null."
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
# Organization$unlock()
#
## Below is an example to define the print function
# Organization$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Organization$lock()

