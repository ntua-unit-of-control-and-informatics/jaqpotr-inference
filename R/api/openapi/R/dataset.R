#' Create a new Dataset
#'
#' @description
#' Dataset Class
#'
#' @docType class
#' @title Dataset
#' @description Dataset Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field type  \link{DatasetType}
#' @field entryType  character
#' @field input  list(\link{AnyType})
#' @field result  list(\link{AnyType}) [optional]
#' @field status  character [optional]
#' @field failureReason  character [optional]
#' @field userId  character [optional]
#' @field modelId  integer [optional]
#' @field modelName  character [optional]
#' @field executedAt  character [optional]
#' @field executionFinishedAt  character [optional]
#' @field createdAt  character [optional]
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Dataset <- R6::R6Class(
  "Dataset",
  public = list(
    `id` = NULL,
    `type` = NULL,
    `entryType` = NULL,
    `input` = NULL,
    `result` = NULL,
    `status` = NULL,
    `failureReason` = NULL,
    `userId` = NULL,
    `modelId` = NULL,
    `modelName` = NULL,
    `executedAt` = NULL,
    `executionFinishedAt` = NULL,
    `createdAt` = NULL,
    `updatedAt` = NULL,
    #' Initialize a new Dataset class.
    #'
    #' @description
    #' Initialize a new Dataset class.
    #'
    #' @param type type
    #' @param entryType entryType
    #' @param input input
    #' @param id id
    #' @param result result
    #' @param status status
    #' @param failureReason failureReason
    #' @param userId userId
    #' @param modelId modelId
    #' @param modelName modelName
    #' @param executedAt executedAt
    #' @param executionFinishedAt executionFinishedAt
    #' @param createdAt createdAt
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type`, `entryType`, `input`, `id` = NULL, `result` = NULL, `status` = NULL, `failureReason` = NULL, `userId` = NULL, `modelId` = NULL, `modelName` = NULL, `executedAt` = NULL, `executionFinishedAt` = NULL, `createdAt` = NULL, `updatedAt` = NULL, ...) {
      if (!missing(`type`)) {
        if (!(`type` %in% c())) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!missing(`entryType`)) {
        if (!(`entryType` %in% c("ARRAY"))) {
          stop(paste("Error! \"", `entryType`, "\" cannot be assigned to `entryType`. Must be \"ARRAY\".", sep = ""))
        }
        if (!(is.character(`entryType`) && length(`entryType`) == 1)) {
          stop(paste("Error! Invalid data for `entryType`. Must be a string:", `entryType`))
        }
        self$`entryType` <- `entryType`
      }
      if (!missing(`input`)) {
        stopifnot(is.vector(`input`), length(`input`) != 0)
        sapply(`input`, function(x) stopifnot(R6::is.R6(x)))
        self$`input` <- `input`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`result`)) {
        stopifnot(is.vector(`result`), length(`result`) != 0)
        sapply(`result`, function(x) stopifnot(R6::is.R6(x)))
        self$`result` <- `result`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("CREATED", "EXECUTING", "FAILURE", "SUCCESS"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"CREATED\", \"EXECUTING\", \"FAILURE\", \"SUCCESS\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`failureReason`)) {
        if (!(is.character(`failureReason`) && length(`failureReason`) == 1)) {
          stop(paste("Error! Invalid data for `failureReason`. Must be a string:", `failureReason`))
        }
        self$`failureReason` <- `failureReason`
      }
      if (!is.null(`userId`)) {
        if (!(is.character(`userId`) && length(`userId`) == 1)) {
          stop(paste("Error! Invalid data for `userId`. Must be a string:", `userId`))
        }
        self$`userId` <- `userId`
      }
      if (!is.null(`modelId`)) {
        if (!(is.numeric(`modelId`) && length(`modelId`) == 1)) {
          stop(paste("Error! Invalid data for `modelId`. Must be an integer:", `modelId`))
        }
        self$`modelId` <- `modelId`
      }
      if (!is.null(`modelName`)) {
        if (!(is.character(`modelName`) && length(`modelName`) == 1)) {
          stop(paste("Error! Invalid data for `modelName`. Must be a string:", `modelName`))
        }
        self$`modelName` <- `modelName`
      }
      if (!is.null(`executedAt`)) {
        if (!(is.character(`executedAt`) && length(`executedAt`) == 1)) {
          stop(paste("Error! Invalid data for `executedAt`. Must be a string:", `executedAt`))
        }
        self$`executedAt` <- `executedAt`
      }
      if (!is.null(`executionFinishedAt`)) {
        if (!(is.character(`executionFinishedAt`) && length(`executionFinishedAt`) == 1)) {
          stop(paste("Error! Invalid data for `executionFinishedAt`. Must be a string:", `executionFinishedAt`))
        }
        self$`executionFinishedAt` <- `executionFinishedAt`
      }
      if (!is.null(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
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
    #' @return Dataset in JSON format
    #' @export
    toJSON = function() {
      DatasetObject <- list()
      if (!is.null(self$`id`)) {
        DatasetObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`type`)) {
        DatasetObject[["type"]] <-
          self$`type`$toJSON()
      }
      if (!is.null(self$`entryType`)) {
        DatasetObject[["entryType"]] <-
          self$`entryType`
      }
      if (!is.null(self$`input`)) {
        DatasetObject[["input"]] <-
          lapply(self$`input`, function(x) x$toJSON())
      }
      if (!is.null(self$`result`)) {
        DatasetObject[["result"]] <-
          lapply(self$`result`, function(x) x$toJSON())
      }
      if (!is.null(self$`status`)) {
        DatasetObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`failureReason`)) {
        DatasetObject[["failureReason"]] <-
          self$`failureReason`
      }
      if (!is.null(self$`userId`)) {
        DatasetObject[["userId"]] <-
          self$`userId`
      }
      if (!is.null(self$`modelId`)) {
        DatasetObject[["modelId"]] <-
          self$`modelId`
      }
      if (!is.null(self$`modelName`)) {
        DatasetObject[["modelName"]] <-
          self$`modelName`
      }
      if (!is.null(self$`executedAt`)) {
        DatasetObject[["executedAt"]] <-
          self$`executedAt`
      }
      if (!is.null(self$`executionFinishedAt`)) {
        DatasetObject[["executionFinishedAt"]] <-
          self$`executionFinishedAt`
      }
      if (!is.null(self$`createdAt`)) {
        DatasetObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`updatedAt`)) {
        DatasetObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      DatasetObject
    },
    #' Deserialize JSON string into an instance of Dataset
    #'
    #' @description
    #' Deserialize JSON string into an instance of Dataset
    #'
    #' @param input_json the JSON input
    #' @return the instance of Dataset
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`type`)) {
        `type_object` <- DatasetType$new()
        `type_object`$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
        self$`type` <- `type_object`
      }
      if (!is.null(this_object$`entryType`)) {
        if (!is.null(this_object$`entryType`) && !(this_object$`entryType` %in% c("ARRAY"))) {
          stop(paste("Error! \"", this_object$`entryType`, "\" cannot be assigned to `entryType`. Must be \"ARRAY\".", sep = ""))
        }
        self$`entryType` <- this_object$`entryType`
      }
      if (!is.null(this_object$`input`)) {
        self$`input` <- ApiClient$new()$deserializeObj(this_object$`input`, "array[AnyType]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`result`)) {
        self$`result` <- ApiClient$new()$deserializeObj(this_object$`result`, "array[AnyType]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("CREATED", "EXECUTING", "FAILURE", "SUCCESS"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"CREATED\", \"EXECUTING\", \"FAILURE\", \"SUCCESS\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`failureReason`)) {
        self$`failureReason` <- this_object$`failureReason`
      }
      if (!is.null(this_object$`userId`)) {
        self$`userId` <- this_object$`userId`
      }
      if (!is.null(this_object$`modelId`)) {
        self$`modelId` <- this_object$`modelId`
      }
      if (!is.null(this_object$`modelName`)) {
        self$`modelName` <- this_object$`modelName`
      }
      if (!is.null(this_object$`executedAt`)) {
        self$`executedAt` <- this_object$`executedAt`
      }
      if (!is.null(this_object$`executionFinishedAt`)) {
        self$`executionFinishedAt` <- this_object$`executionFinishedAt`
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
    #' @return Dataset in JSON format
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
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
          %s
          ',
          jsonlite::toJSON(self$`type`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`entryType`)) {
          sprintf(
          '"entryType":
            "%s"
                    ',
          self$`entryType`
          )
        },
        if (!is.null(self$`input`)) {
          sprintf(
          '"input":
          [%s]
',
          paste(sapply(self$`input`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`result`)) {
          sprintf(
          '"result":
          [%s]
',
          paste(sapply(self$`result`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            "%s"
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`failureReason`)) {
          sprintf(
          '"failureReason":
            "%s"
                    ',
          self$`failureReason`
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
        if (!is.null(self$`modelId`)) {
          sprintf(
          '"modelId":
            %d
                    ',
          self$`modelId`
          )
        },
        if (!is.null(self$`modelName`)) {
          sprintf(
          '"modelName":
            "%s"
                    ',
          self$`modelName`
          )
        },
        if (!is.null(self$`executedAt`)) {
          sprintf(
          '"executedAt":
            "%s"
                    ',
          self$`executedAt`
          )
        },
        if (!is.null(self$`executionFinishedAt`)) {
          sprintf(
          '"executionFinishedAt":
            "%s"
                    ',
          self$`executionFinishedAt`
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
    #' Deserialize JSON string into an instance of Dataset
    #'
    #' @description
    #' Deserialize JSON string into an instance of Dataset
    #'
    #' @param input_json the JSON input
    #' @return the instance of Dataset
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`type` <- DatasetType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`entryType`) && !(this_object$`entryType` %in% c("ARRAY"))) {
        stop(paste("Error! \"", this_object$`entryType`, "\" cannot be assigned to `entryType`. Must be \"ARRAY\".", sep = ""))
      }
      self$`entryType` <- this_object$`entryType`
      self$`input` <- ApiClient$new()$deserializeObj(this_object$`input`, "array[AnyType]", loadNamespace("openapi"))
      self$`result` <- ApiClient$new()$deserializeObj(this_object$`result`, "array[AnyType]", loadNamespace("openapi"))
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("CREATED", "EXECUTING", "FAILURE", "SUCCESS"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"CREATED\", \"EXECUTING\", \"FAILURE\", \"SUCCESS\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`failureReason` <- this_object$`failureReason`
      self$`userId` <- this_object$`userId`
      self$`modelId` <- this_object$`modelId`
      self$`modelName` <- this_object$`modelName`
      self$`executedAt` <- this_object$`executedAt`
      self$`executionFinishedAt` <- this_object$`executionFinishedAt`
      self$`createdAt` <- this_object$`createdAt`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },
    #' Validate JSON input with respect to Dataset
    #'
    #' @description
    #' Validate JSON input with respect to Dataset and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(R6::is.R6(input_json$`type`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Dataset: the required field `type` is missing."))
      }
      # check the required field `entryType`
      if (!is.null(input_json$`entryType`)) {
        if (!(is.character(input_json$`entryType`) && length(input_json$`entryType`) == 1)) {
          stop(paste("Error! Invalid data for `entryType`. Must be a string:", input_json$`entryType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Dataset: the required field `entryType` is missing."))
      }
      # check the required field `input`
      if (!is.null(input_json$`input`)) {
        stopifnot(is.vector(input_json$`input`), length(input_json$`input`) != 0)
        tmp <- sapply(input_json$`input`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Dataset: the required field `input` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Dataset
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
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `entryType` is null
      if (is.null(self$`entryType`)) {
        return(FALSE)
      }

      # check if the required `input` is null
      if (is.null(self$`input`)) {
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
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `entryType` is null
      if (is.null(self$`entryType`)) {
        invalid_fields["entryType"] <- "Non-nullable required field `entryType` cannot be null."
      }

      # check if the required `input` is null
      if (is.null(self$`input`)) {
        invalid_fields["input"] <- "Non-nullable required field `input` cannot be null."
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
# Dataset$unlock()
#
## Below is an example to define the print function
# Dataset$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Dataset$lock()

