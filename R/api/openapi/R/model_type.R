#' @docType class
#' @title ModelType
#' @description ModelType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelType <- R6::R6Class(
  "ModelType",
  public = list(
    #' Initialize a new ModelType class.
    #'
    #' @description
    #' Initialize a new ModelType class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_ModelType()

      if (length(val) == 0L) {
        val = "DUMMY_ENUM"
      } else {
        stopifnot(length(val) == 1L)
      }

      if (!val %in% enumvec) {
        if (!(val=="DUMMY_ENUM")) {
          stop("Use one of the valid values: ",
            paste0(enumvec, collapse = ", "))
        }
        warning("Initializing ModelType with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize ModelType, this may already be overwritten by an enum loaded from a JSON config.")
      }
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ModelType in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ModelType
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelType
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelType
    #' @export
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ModelType in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of ModelType
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelType
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelType
    #' @export
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_ModelType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[SKLEARN, TORCH_ONNX, TORCHSCRIPT, R_BNLEARN_DISCRETE, R_CARET, R_GBM, R_NAIVE_BAYES, R_PBPK, R_RF, R_RPART, R_SVM, R_TREE_CLASS, R_TREE_REGR, QSAR_TOOLBOX_CALCULATOR, QSAR_TOOLBOX_QSAR_MODEL, QSAR_TOOLBOX_PROFILER]")
  unlist(strsplit(res, ", "))
}

