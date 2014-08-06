default.server <- "ceres.cepremap.org"

list.categories <- function(db, server = default.server)
  fromJSON(file=paste("http:/", server, db, "categories", sep = "/"))

get.category <- function(db, category.id, server = default.server)
  fromJSON(file=paste("http:/", server, db, "categories", category.id, sep = "/"))

list.series <- function(db, category.id, server = default.server)
  fromJSON(file=paste("http:/", server, db, "categories", category.id, "series", sep = "/"))

get.series <- function(db, series.id, server = default.server)
  fromJSON(file=paste("http:/", server, db, "series", series.id, sep = "/"))
