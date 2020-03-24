
#' Parser
#'
#' Parses data returned by covid19 endpoint functions
#'
#' @param x Input data returned by covid19 function
#' @return A tibble data frame
#' @export
covid19_parse <- function(x) UseMethod("covid19_parse")

#' @export
covid19_parse.response <- function(x) {
  x <- httr::content(x, as = "text", encoding = "UTF-8")
  covid19_parse(x)
}

#' @export
covid19_parse.character <- function(x) {
  x <- try_null(jsonlite::fromJSON(x))
  covid19_parse(x)
}

#' @export
covid19_as_tbl <- function(...) {
  x <- tibble::as_tibble(...)
  x <- janitor::clean_names(x)
  dt <- dapr::vap_lgl(x, ~ is.character(.x) && all(grepl("^\\d{4}-\\d", .x)))
  x[dt] <- dapr::lap(x[dt], as.POSIXct, format = "%Y-%m-%dT%H:%M:%S")
  dt <- dapr::vap_lgl(x, ~ is.integer(.x) &&
      all(grepl("^20\\d{6}$", as.character(.x))))
  x[dt] <- dapr::lap(x[dt], ~
      as.Date(as.POSIXct(as.character(.x), format = "%Y%m%d")))
  x
}

#' @export
covid19_parse.list <- function(x) {
  if (all(dapr::vap_lgl(x, is.data.frame))) {
    x <- do.call("rbind", x)
  }
  try_x(covid19_as_tbl(x), x)
}

#' @export
covid19_parse.data.frame <- function(x) {
  covid19_as_tbl(x)
}

covid19_parse.NULL <- function(x) {
  tibble::tibble()
}

try_null <- function(x) tryCatch(x, error = function(e) NULL)

try_x <- function(e, x) tryCatch(e, error = function(e) x)

covid19_get <- function(url, ...) {
  r <- try_null(httr::GET(url, ...))
  if (is.null(r)) {
    r <- structure(list(url = url, date = Sys.time(),
      headers = list(`content-type` = "text/html; charset=utf-8"),
      status_code = 404L, content = charToRaw("<!DOCTYPE html><html></html>")),
      class = "response")
  }
  r
}
