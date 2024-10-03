#' Create a new ApiKey
#'
#' @description
#' ApiKey Class
#'
#' @docType class
#' @title ApiKey
#' @description ApiKey Class
#' @format An \code{R6Class} generator object
#' @field clientKey The generated API key character [optional]
#' @field note A note for the API key character [optional]
#' @field userId The ID of the user associated with the API key character [optional]
#' @field expiresAt The expiration time of the API key (if any) character [optional]
#' @field expirationTime  character
#' @field lastUsed The last time the API key was used character [optional]
#' @field lastUsedIp The IP address from which the API key was last used character [optional]
#' @field enabled Whether the API key is active or disabled character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiKey <- R6::R6Class(
  "ApiKey",
  public = list(
    `clientKey` = NULL,
    `note` = NULL,
    `userId` = NULL,
    `expiresAt` = NULL,
    `expirationTime` = NULL,
    `lastUsed` = NULL,
    `lastUsedIp` = NULL,
    `enabled` = NULL,
    #' Initialize a new ApiKey class.
    #'
    #' @description
    #' Initialize a new ApiKey class.
    #'
    #' @param expirationTime expirationTime
    #' @param clientKey The generated API key
    #' @param note A note for the API key
    #' @param userId The ID of the user associated with the API key
    #' @param expiresAt The expiration time of the API key (if any)
    #' @param lastUsed The last time the API key was used
    #' @param lastUsedIp The IP address from which the API key was last used
    #' @param enabled Whether the API key is active or disabled
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`expirationTime`, `clientKey` = NULL, `note` = NULL, `userId` = NULL, `expiresAt` = NULL, `lastUsed` = NULL, `lastUsedIp` = NULL, `enabled` = NULL, ...) {
      if (!missing(`expirationTime`)) {
        if (!(`expirationTime` %in% c("THREE_MONTHS", "SIX_MONTHS"))) {
          stop(paste("Error! \"", `expirationTime`, "\" cannot be assigned to `expirationTime`. Must be \"THREE_MONTHS\", \"SIX_MONTHS\".", sep = ""))
        }
        if (!(is.character(`expirationTime`) && length(`expirationTime`) == 1)) {
          stop(paste("Error! Invalid data for `expirationTime`. Must be a string:", `expirationTime`))
        }
        self$`expirationTime` <- `expirationTime`
      }
      if (!is.null(`clientKey`)) {
        if (!(is.character(`clientKey`) && length(`clientKey`) == 1)) {
          stop(paste("Error! Invalid data for `clientKey`. Must be a string:", `clientKey`))
        }
        self$`clientKey` <- `clientKey`
      }
      if (!is.null(`note`)) {
        if (!(is.character(`note`) && length(`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", `note`))
        }
        self$`note` <- `note`
      }
      if (!is.null(`userId`)) {
        if (!(is.character(`userId`) && length(`userId`) == 1)) {
          stop(paste("Error! Invalid data for `userId`. Must be a string:", `userId`))
        }
        self$`userId` <- `userId`
      }
      if (!is.null(`expiresAt`)) {
        if (!is.character(`expiresAt`)) {
          stop(paste("Error! Invalid data for `expiresAt`. Must be a string:", `expiresAt`))
        }
        self$`expiresAt` <- `expiresAt`
      }
      if (!is.null(`lastUsed`)) {
        if (!is.character(`lastUsed`)) {
          stop(paste("Error! Invalid data for `lastUsed`. Must be a string:", `lastUsed`))
        }
        self$`lastUsed` <- `lastUsed`
      }
      if (!is.null(`lastUsedIp`)) {
        if (!(is.character(`lastUsedIp`) && length(`lastUsedIp`) == 1)) {
          stop(paste("Error! Invalid data for `lastUsedIp`. Must be a string:", `lastUsedIp`))
        }
        self$`lastUsedIp` <- `lastUsedIp`
      }
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ApiKey in JSON format
    #' @export
    toJSON = function() {
      ApiKeyObject <- list()
      if (!is.null(self$`clientKey`)) {
        ApiKeyObject[["clientKey"]] <-
          self$`clientKey`
      }
      if (!is.null(self$`note`)) {
        ApiKeyObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`userId`)) {
        ApiKeyObject[["userId"]] <-
          self$`userId`
      }
      if (!is.null(self$`expiresAt`)) {
        ApiKeyObject[["expiresAt"]] <-
          self$`expiresAt`
      }
      if (!is.null(self$`expirationTime`)) {
        ApiKeyObject[["expirationTime"]] <-
          self$`expirationTime`
      }
      if (!is.null(self$`lastUsed`)) {
        ApiKeyObject[["lastUsed"]] <-
          self$`lastUsed`
      }
      if (!is.null(self$`lastUsedIp`)) {
        ApiKeyObject[["lastUsedIp"]] <-
          self$`lastUsedIp`
      }
      if (!is.null(self$`enabled`)) {
        ApiKeyObject[["enabled"]] <-
          self$`enabled`
      }
      ApiKeyObject
    },
    #' Deserialize JSON string into an instance of ApiKey
    #'
    #' @description
    #' Deserialize JSON string into an instance of ApiKey
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiKey
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`clientKey`)) {
        self$`clientKey` <- this_object$`clientKey`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
      }
      if (!is.null(this_object$`userId`)) {
        self$`userId` <- this_object$`userId`
      }
      if (!is.null(this_object$`expiresAt`)) {
        self$`expiresAt` <- this_object$`expiresAt`
      }
      if (!is.null(this_object$`expirationTime`)) {
        if (!is.null(this_object$`expirationTime`) && !(this_object$`expirationTime` %in% c("THREE_MONTHS", "SIX_MONTHS"))) {
          stop(paste("Error! \"", this_object$`expirationTime`, "\" cannot be assigned to `expirationTime`. Must be \"THREE_MONTHS\", \"SIX_MONTHS\".", sep = ""))
        }
        self$`expirationTime` <- this_object$`expirationTime`
      }
      if (!is.null(this_object$`lastUsed`)) {
        self$`lastUsed` <- this_object$`lastUsed`
      }
      if (!is.null(this_object$`lastUsedIp`)) {
        self$`lastUsedIp` <- this_object$`lastUsedIp`
      }
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ApiKey in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`clientKey`)) {
          sprintf(
          '"clientKey":
            "%s"
                    ',
          self$`clientKey`
          )
        },
        if (!is.null(self$`note`)) {
          sprintf(
          '"note":
            "%s"
                    ',
          self$`note`
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
        if (!is.null(self$`expiresAt`)) {
          sprintf(
          '"expiresAt":
            "%s"
                    ',
          self$`expiresAt`
          )
        },
        if (!is.null(self$`expirationTime`)) {
          sprintf(
          '"expirationTime":
            "%s"
                    ',
          self$`expirationTime`
          )
        },
        if (!is.null(self$`lastUsed`)) {
          sprintf(
          '"lastUsed":
            "%s"
                    ',
          self$`lastUsed`
          )
        },
        if (!is.null(self$`lastUsedIp`)) {
          sprintf(
          '"lastUsedIp":
            "%s"
                    ',
          self$`lastUsedIp`
          )
        },
        if (!is.null(self$`enabled`)) {
          sprintf(
          '"enabled":
            %s
                    ',
          tolower(self$`enabled`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ApiKey
    #'
    #' @description
    #' Deserialize JSON string into an instance of ApiKey
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiKey
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`clientKey` <- this_object$`clientKey`
      self$`note` <- this_object$`note`
      self$`userId` <- this_object$`userId`
      self$`expiresAt` <- this_object$`expiresAt`
      if (!is.null(this_object$`expirationTime`) && !(this_object$`expirationTime` %in% c("THREE_MONTHS", "SIX_MONTHS"))) {
        stop(paste("Error! \"", this_object$`expirationTime`, "\" cannot be assigned to `expirationTime`. Must be \"THREE_MONTHS\", \"SIX_MONTHS\".", sep = ""))
      }
      self$`expirationTime` <- this_object$`expirationTime`
      self$`lastUsed` <- this_object$`lastUsed`
      self$`lastUsedIp` <- this_object$`lastUsedIp`
      self$`enabled` <- this_object$`enabled`
      self
    },
    #' Validate JSON input with respect to ApiKey
    #'
    #' @description
    #' Validate JSON input with respect to ApiKey and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `expirationTime`
      if (!is.null(input_json$`expirationTime`)) {
        if (!(is.character(input_json$`expirationTime`) && length(input_json$`expirationTime`) == 1)) {
          stop(paste("Error! Invalid data for `expirationTime`. Must be a string:", input_json$`expirationTime`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiKey: the required field `expirationTime` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApiKey
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
      # check if the required `expirationTime` is null
      if (is.null(self$`expirationTime`)) {
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
      # check if the required `expirationTime` is null
      if (is.null(self$`expirationTime`)) {
        invalid_fields["expirationTime"] <- "Non-nullable required field `expirationTime` cannot be null."
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
# ApiKey$unlock()
#
## Below is an example to define the print function
# ApiKey$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApiKey$lock()

