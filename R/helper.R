# Converts a MongoDB timestamp into a POSIXlt object
timestamp.to.POSIXlt <- function(stamp)
  as.POSIXlt(stamp/1000, origin = "1970-01-01")
