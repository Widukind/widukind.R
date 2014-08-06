get.series.as.ts <- function(db, series.id, server = default.server)
  {
    x <- get.series(db, series.id, server = server)

    d <- timestamp.to.POSIXlt(x$start_date$`$date`)

    if (x$frequency == "M")
      {
        freq <- 12
        start <- c(d$year+1900, d$mon+1)
      }
    else if (x$frequency == "Q")
      {
        freq <- 4
        q <- as.numeric(substr(quarters(d), 2, 2))
        start <- c(d$year+1900, q)
      }
    else if (x$frequency == "Y")
      {
        freq <- 1
        start <- d$year+1900
      }
    else
      stop("Unknown frequency: ", x$frequency)

    ts(x$values, start = start, frequency = freq)
  }

