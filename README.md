# Widukind for R

This package gives the possibility of downloading Widukind data into R.

# Installation

Clone the git repository and, from the upper-level directory, issue this
command in a shell:
```
R CMD INSTALL RWidukind
```

This will install the package in some path accessible to R.

Then, in every session where you want to use the package, issue the following
in R:
```
library(Widukind)
```

# Retrieving a series as a timeseries object

If you know the id of a series, you can get it as a `ts` (R timeseries) object
with the `get.series.as.ts` function.

For example:
```
get.series.as.ts("eurostat", "5369a7fe9f8f083631ab1b2a")
```

# Lower lever interface

For each accessible method of the web API there is a R counterpart. It returns
the JSON object as an R list.

The methods are:
- retrieving all categories: `list.categories(db)`
- retrieving a specific category: `get.category(db, category.id)`
- retrieving all series of a category: `list.series(db, category.id)`
- retrieving a specific series: `get.series(db, series.id)`
