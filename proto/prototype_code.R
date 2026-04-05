doc_translations <- list(
  en = list(
    title       = "Submit a GSoC proposal",
    description = "Check whether you can still submit your Google Summer of Code proposal.",
    details     = "The submission deadline is stored once in a package-level environment and used consistently across code and documentation."
  ),
  bn = list(
    title       = "GSoC প্রস্তাব জমা দিন",
    description = "আপনি এখনও Google Summer of Code-এর প্রস্তাব জমা দিতে পারবেন কিনা তা যাচাই করুন।",
    details     = "সাবমিশনের শেষ সময়সীমা প্যাকেজ-লেভেলের একটি এনভায়রনমেন্টে একবার সংরক্ষণ করা হয় এবং কোড ও ডকুমেন্টেশনে বারবার ব্যবহার করা হয়।"
  )
)
get_doc_text <- function(section = c("title", "description", "details"),
                         lang = c("en", "bn")) {
  section <- match.arg(section)
  lang    <- match.arg(lang)

  if (!lang %in% names(doc_translations)) {
    stop("Language '", lang, "' is not available.")
  }

  txt <- doc_translations[[lang]][[section]]

  if (is.null(txt)) {
    stop("Section '", section, "' not available for language '", lang, "'.")
  }

  txt
}
print_submit_proposal_help <- function(lang = c("en", "bn")) {
  lang <- match.arg(lang)

  cat("# ", get_doc_text("title", lang), "\n\n", sep = "")
  cat(get_doc_text("description", lang), "\n\n", sep = "")
  cat(get_doc_text("details", lang), "\n", sep = "")
}
