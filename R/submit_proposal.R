#' Submit a GSoC proposal
#'
#' @description
#' A mock function that checks whether you can still submit a proposal
#' to Google Summer of Code.
#'
#' @details
#' The submission deadline is set when the package is loaded.
#' The current deadline is:
#' \strong{\Sexpr[stage=install, results=text]{as.character(gsocprop:::gsoc_env$deadline)}}.
#'
#' \emph{\Sexpr[stage=render, results=text]{gsocprop:::deadline_message()}}
#'
#' This means the date shown in the documentation and the value used
#' by the function are always in agreement.
#'
#' @return
#' A single logical value: `TRUE` if run on or before the deadline,
#' and `FALSE` if run after.
#'
#' @examples
#' submit_proposal()
#'
#' @export
submit_proposal <- function() {
  today <- Sys.Date()
  deadline <- gsoc_env$deadline

  if (is.null(deadline) || is.na(deadline)) {
    stop("gsoc_env$deadline is not set. This should not happen; please reinstall or reload the package.")
  }

  today <= deadline
}
