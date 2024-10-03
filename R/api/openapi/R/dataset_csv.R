#' Create a new DatasetCSV
#'
#' @description
#' DatasetCSV Class
#'
#' @docType class
#' @title DatasetCSV
#' @description DatasetCSV Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field type  \link{DatasetType}
#' @field inputFile A base64 representation in CSV format of the input values. character
#' @field values  list(\link{AnyType}) [optional]
#' @field status  character [optional]
#' @field failureReason  character [optional]
#' @field modelId  integer [optional]
#' @field modelName  character [optional]
#' @field executedAt  character [optional]
#' @field executionFinishedAt  character [optional]
#' @field createdAt  character [optional]
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatasetCSV <- R6::R6Class(
  "DatasetCSV",
  public = list(
    `id` = NULL,
    `type` = NULL,
    `inputFile` = NULL,
    `values` = NULL,
    `status` = NULL,
    `failureReason` = NULL,
    `modelId` = NULL,
    `modelName` = NULL,
    `executedAt` = NULL,
    `executionFinishedAt` = NULL,
    `createdAt` = NULL,
    `updatedAt` = NULL,
    #' Initialize a new DatasetCSV class.
    #'
    #' @description
    #' Initialize a new DatasetCSV class.
    #'
    #' @param type type
    #' @param inputFile A base64 representation in CSV format of the input values.
    #' @param id id
    #' @param values values
    #' @param status status
    #' @param failureReason failureReason
    #' @param modelId modelId
    #' @param modelName modelName
    #' @param executedAt executedAt
    #' @param executionFinishedAt executionFinishedAt
    #' @param createdAt createdAt
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type`, `inputFile`, `id` = NULL, `values` = NULL, `status` = NULL, `failureReason` = NULL, `modelId` = NULL, `modelName` = NULL, `executedAt` = NULL, `executionFinishedAt` = NULL, `createdAt` = NULL, `updatedAt` = NULL, ...) {
      if (!missing(`type`)) {
        if (!(`type` %in% c())) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!missing(`inputFile`)) {
        self$`inputFile` <- `inputFile`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`values`)) {
        stopifnot(is.vector(`values`), length(`values`) != 0)
        sapply(`values`, function(x) stopifnot(R6::is.R6(x)))
        self$`values` <- `values`
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
    #' @return DatasetCSV in JSON format
    #' @export
    toJSON = function() {
      DatasetCSVObject <- list()
      if (!is.null(self$`id`)) {
        DatasetCSVObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`type`)) {
        DatasetCSVObject[["type"]] <-
          self$`type`$toJSON()
      }
      if (!is.null(self$`inputFile`)) {
        DatasetCSVObject[["inputFile"]] <-
          self$`inputFile`
      }
      if (!is.null(self$`values`)) {
        DatasetCSVObject[["values"]] <-
          lapply(self$`values`, function(x) x$toJSON())
      }
      if (!is.null(self$`status`)) {
        DatasetCSVObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`failureReason`)) {
        DatasetCSVObject[["failureReason"]] <-
          self$`failureReason`
      }
      if (!is.null(self$`modelId`)) {
        DatasetCSVObject[["modelId"]] <-
          self$`modelId`
      }
      if (!is.null(self$`modelName`)) {
        DatasetCSVObject[["modelName"]] <-
          self$`modelName`
      }
      if (!is.null(self$`executedAt`)) {
        DatasetCSVObject[["executedAt"]] <-
          self$`executedAt`
      }
      if (!is.null(self$`executionFinishedAt`)) {
        DatasetCSVObject[["executionFinishedAt"]] <-
          self$`executionFinishedAt`
      }
      if (!is.null(self$`createdAt`)) {
        DatasetCSVObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`updatedAt`)) {
        DatasetCSVObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      DatasetCSVObject
    },
    #' Deserialize JSON string into an instance of DatasetCSV
    #'
    #' @description
    #' Deserialize JSON string into an instance of DatasetCSV
    #'
    #' @param input_json the JSON input
    #' @return the instance of DatasetCSV
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
      if (!is.null(this_object$`inputFile`)) {
        self$`inputFile` <- this_object$`inputFile`
      }
      if (!is.null(this_object$`values`)) {
        self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[AnyType]", loadNamespace("openapi"))
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
    #' @return DatasetCSV in JSON format
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
        if (!is.null(self$`inputFile`)) {
          sprintf(
          '"inputFile":
            "%s"
                    ',
          self$`inputFile`
          )
        },
        if (!is.null(self$`values`)) {
          sprintf(
          '"values":
          [%s]
',
          paste(sapply(self$`values`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of DatasetCSV
    #'
    #' @description
    #' Deserialize JSON string into an instance of DatasetCSV
    #'
    #' @param input_json the JSON input
    #' @return the instance of DatasetCSV
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`type` <- DatasetType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self$`inputFile` <- this_object$`inputFile`
      self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[AnyType]", loadNamespace("openapi"))
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("CREATED", "EXECUTING", "FAILURE", "SUCCESS"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"CREATED\", \"EXECUTING\", \"FAILURE\", \"SUCCESS\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`failureReason` <- this_object$`failureReason`
      self$`modelId` <- this_object$`modelId`
      self$`modelName` <- this_object$`modelName`
      self$`executedAt` <- this_object$`executedAt`
      self$`executionFinishedAt` <- this_object$`executionFinishedAt`
      self$`createdAt` <- this_object$`createdAt`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },
    #' Validate JSON input with respect to DatasetCSV
    #'
    #' @description
    #' Validate JSON input with respect to DatasetCSV and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(R6::is.R6(input_json$`type`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatasetCSV: the required field `type` is missing."))
      }
      # check the required field `inputFile`
      if (!is.null(input_json$`inputFile`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatasetCSV: the required field `inputFile` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DatasetCSV
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

      # check if the required `inputFile` is null
      if (is.null(self$`inputFile`)) {
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

      # check if the required `inputFile` is null
      if (is.null(self$`inputFile`)) {
        invalid_fields["inputFile"] <- "Non-nullable required field `inputFile` cannot be null."
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
# DatasetCSV$unlock()
#
## Below is an example to define the print function
# DatasetCSV$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DatasetCSV$lock()

