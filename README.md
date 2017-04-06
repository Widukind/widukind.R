# DB.nomics for R

This package gives the possibility of downloading DB.nomics series in R.

**`DB.nomics <https://db.nomics.world/>`_ is a database of international macroeconomic data collected on public web servers of statistical offices worldwide.**

*Please ask your questions to the `DB.nomics forum <https://forum.db.nomics.world/>`_.*

# Installation

First, you have to install the `rjson` package for R. Under Debian or Ubuntu,
this can be done by installing the `r-cran-rjson` package. Otherwise, you can
install it by issuing the following in R: `install.packages("rjson")`.

Then, clone the git repository and, from the upper-level directory, issue this
command in a shell:
```
R CMD INSTALL dbnomics-connector.R
```

This will install the package in some path accessible to R.

Then, in every session where you want to use the package, issue the following
in R:
```
library(DBnomics)
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
