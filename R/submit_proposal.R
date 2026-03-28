submit_proposal <- function() {
  today <- Sys.Date()

  # Using March 31 as the deadline
  current_year <- format(today, "%Y")
  deadline <- as.Date(paste0(current_year, "-03-31"))

  today <= deadline
}
