# Internal environment for package-wide settings
gsoc_env <- new.env(parent = emptyenv())

# Called automatically when the package is loaded
.onLoad <- function(libname, pkgname) {
  # Define the submission deadline once, here.
  # Example: March 31 of the current year at install/load time.
  current_year <- format(Sys.Date(), "%Y")
  deadline <- as.Date(paste0(current_year, "-03-31"))

  gsoc_env$deadline <- deadline
}

# Internal helper used in documentation and (optionally) elsewhere
deadline_message <- function(today = Sys.Date()) {
  deadline <- gsoc_env$deadline

  if (is.null(deadline) || is.na(deadline)) {
    return("Status: The deadline is not set.")
  }

  days_left <- as.integer(deadline - today)

  if (days_left > 1L) {
    sprintf("Status: The deadline is in %d days.", days_left)
  } else if (days_left == 1L) {
    "Status: The deadline is in 1 day."
  } else if (days_left == 0L) {
    "Status: The deadline is today! Submit immediately."
  } else {
    "Status: The deadline has passed, try next year!"
  }
}
