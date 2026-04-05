# Multilingual documentation prototype (experimental)

This folder contains a small, exploratory prototype related to the **Multilingual documentation of R packages** GSoC idea.

The main package in this repo (`gsocprop`) implements the required easy, medium, and hard tests. The code here is *experimental* and is not needed to run those tests.

Ideas explored:

-   How to keep translated text for `submit_proposal()` in a separate structure.
-   How a helper function might select documentation text based on a language code (e.g. `"en"` vs `"bn"`).

This is only a prototype to show my early thinking about multilingual documentation; it is not production-quality code.

## How to run the prototype

From the `gsocprop` project root in R:

``` r
source("proto/prototype_code.R")

print_submit_proposal_help(lang = "en")
print_submit_proposal_help(lang = "bn")
```

This prints a small, language-aware help snippet for `submit_proposal()`.

## Example

From the project root:

``` r
source("proto/prototype_code.R")

print_submit_proposal_help("en")
print_submit_proposal_help("bn")
```

Example output:

-   English:

    \# Submit a GSoC proposal

    Check whether you can still submit your Google Summer of Code proposal.

-   Bangla:

    \# GSoC প্রস্তাব জমা দিন

    আপনি এখনও Google Summer of Code-এর প্রস্তাব জমা দিতে পারবেন কিনা তা যাচাই করুন।
