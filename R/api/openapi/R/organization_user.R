#' Create a new OrganizationUser
#'
#' @description
#' OrganizationUser Class
#'
#' @docType class
#' @title OrganizationUser
#' @description OrganizationUser Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field userId  character
#' @field username  character
#' @field email  character
#' @field associationType  \link{OrganizationUserAssociationType}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrganizationUser <- R6::R6Class(
  "OrganizationUser",
  public = list(
    `id` = NULL,
    `userId` = NULL,
    `username` = NULL,
    `email` = NULL,
    `associationType` = NULL,
    #' Initialize a new OrganizationUser class.
    #'
    #' @description
    #' Initialize a new OrganizationUser class.
    #'
    #' @param userId userId
    #' @param username username
    #' @param email email
    #' @param associationType associationType
    #' @param id id
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`userId`, `username`, `email`, `associationType`, `id` = NULL, ...) {
      if (!missing(`userId`)) {
        if (!(is.character(`userId`) && length(`userId`) == 1)) {
          stop(paste("Error! Invalid data for `userId`. Must be a string:", `userId`))
        }
        self$`userId` <- `userId`
      }
      if (!missing(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!missing(`associationType`)) {
        if (!(`associationType` %in% c())) {
          stop(paste("Error! \"", `associationType`, "\" cannot be assigned to `associationType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`associationType`))
        self$`associationType` <- `associationType`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrganizationUser in JSON format
    #' @export
    toJSON = function() {
      OrganizationUserObject <- list()
      if (!is.null(self$`id`)) {
        OrganizationUserObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`userId`)) {
        OrganizationUserObject[["userId"]] <-
          self$`userId`
      }
      if (!is.null(self$`username`)) {
        OrganizationUserObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`email`)) {
        OrganizationUserObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`associationType`)) {
        OrganizationUserObject[["associationType"]] <-
          self$`associationType`$toJSON()
      }
      OrganizationUserObject
    },
    #' Deserialize JSON string into an instance of OrganizationUser
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrganizationUser
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrganizationUser
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`userId`)) {
        self$`userId` <- this_object$`userId`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`associationType`)) {
        `associationtype_object` <- OrganizationUserAssociationType$new()
        `associationtype_object`$fromJSON(jsonlite::toJSON(this_object$`associationType`, auto_unbox = TRUE, digits = NA))
        self$`associationType` <- `associationtype_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrganizationUser in JSON format
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
        if (!is.null(self$`userId`)) {
          sprintf(
          '"userId":
            "%s"
                    ',
          self$`userId`
          )
        },
        if (!is.null(self$`username`)) {
          sprintf(
          '"username":
            "%s"
                    ',
          self$`username`
          )
        },
        if (!is.null(self$`email`)) {
          sprintf(
          '"email":
            "%s"
                    ',
          self$`email`
          )
        },
        if (!is.null(self$`associationType`)) {
          sprintf(
          '"associationType":
          %s
          ',
          jsonlite::toJSON(self$`associationType`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of OrganizationUser
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrganizationUser
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrganizationUser
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`userId` <- this_object$`userId`
      self$`username` <- this_object$`username`
      self$`email` <- this_object$`email`
      self$`associationType` <- OrganizationUserAssociationType$new()$fromJSON(jsonlite::toJSON(this_object$`associationType`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to OrganizationUser
    #'
    #' @description
    #' Validate JSON input with respect to OrganizationUser and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `userId`
      if (!is.null(input_json$`userId`)) {
        if (!(is.character(input_json$`userId`) && length(input_json$`userId`) == 1)) {
          stop(paste("Error! Invalid data for `userId`. Must be a string:", input_json$`userId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrganizationUser: the required field `userId` is missing."))
      }
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        if (!(is.character(input_json$`username`) && length(input_json$`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", input_json$`username`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrganizationUser: the required field `username` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrganizationUser: the required field `email` is missing."))
      }
      # check the required field `associationType`
      if (!is.null(input_json$`associationType`)) {
        stopifnot(R6::is.R6(input_json$`associationType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrganizationUser: the required field `associationType` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrganizationUser
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
      # check if the required `userId` is null
      if (is.null(self$`userId`)) {
        return(FALSE)
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        return(FALSE)
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      # check if the required `associationType` is null
      if (is.null(self$`associationType`)) {
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
      # check if the required `userId` is null
      if (is.null(self$`userId`)) {
        invalid_fields["userId"] <- "Non-nullable required field `userId` cannot be null."
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `associationType` is null
      if (is.null(self$`associationType`)) {
        invalid_fields["associationType"] <- "Non-nullable required field `associationType` cannot be null."
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
# OrganizationUser$unlock()
#
## Below is an example to define the print function
# OrganizationUser$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrganizationUser$lock()

