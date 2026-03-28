# gsocprop

An example R package built as part of the **GSoC 2026 contributor tests** for the project
*[Multilingual documentation of R packages]*.

The package currently implements the **easy** test:

> Create a function `submit_proposal()` that returns `TRUE` if it is run before the GSoC submission deadline (31 March of the current year), and `FALSE` otherwise.

------------------------------------------------------------------------

## Installation

You can install the development version of `gsocprop` from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("mahjabinoyshi/gsocprop")
```

``` r
library(gsocprop)

# Returns TRUE if today's date is on or before 31 March of the current year,
# FALSE if it is after the deadline.
submit_proposal()
```
