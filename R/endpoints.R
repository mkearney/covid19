try_null <- function(...) tryCatch(..., error = function(e) NULL)

covid19_parse <- function(x) UseMethod("covid19_parse")

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

covid19_parse.response <- function(x) {
  x <- httr::content(x, as = "text", encoding = "UTF-8")
  covid19_parse(x)
}

covid19_parse.character <- function(x) {
  x <- try_null(jsonlite::fromJSON(x))
  if (is.list(x) && all(dapr::vap_lgl(x, is.data.frame))) {
    x <- do.call("rbind", x)
  }
  covid19_parse(x)
}
covid19_as_tbl <- function(...) {
  x <- tibble::as_tibble(...)
  x <- janitor::clean_names(x)
  dt <- dapr::vap_lgl(x, ~ is.character(.x) && all(grepl("^\\d{4}-\\d", .x)))
  x[dt] <- dapr::lap(x[dt], as.POSIXct, format = "%Y-%m-%dT%H:%M:%S")
  x
}
covid19_parse.list <- function(x) {
  covid19_as_tbl(x)
}

covid19_parse.data.frame <- function(x) {
  covid19_as_tbl(x)
}

covid19_parse.NULL <- function(x) {
  tibble::tibble()
}

#' States
#'
#' Reported number cases of COVID-19 by state
#'
#' @param parse Logical, defaults to TRUE, indicating whether to convert
#'   response object into a tibble data frame
#' @return A tibble
#' @export
covid19_states <- function(parse = TRUE) {
  r <- covid19_get("https://covidtracking.com/api/states")
  if (parse) {
    r <- covid19_parse(r)
  }
  r
}

#' States daily
#'
#' Daily reported number of COVID-19 cases by U.S. state
#'
#' @param parse Logical, defaults to TRUE, indicating whether to convert
#'   response object into a tibble data frame
#' @return A tibble
#' @export
covid19_states_daily <- function(parse = TRUE) {
  r <- covid19_get("https://covidtracking.com/api/states/daily")
  if (parse) {
    r <- covid19_parse(r)
  }
  r
}

#' States info
#'
#' State information about COVID-19
#'
#' @param parse Logical, defaults to TRUE, indicating whether to convert
#'   response object into a tibble data frame
#' @return A tibble
#' @export
covid19_states_info <- function(parse = TRUE) {
  r <- covid19_get("https://covidtracking.com/api/states/info")
  if (parse) {
    r <- covid19_parse(r)
  }
  r
}

#' U.S.
#'
#' Reported number of cases of COVID-19 in the U.S.
#'
#' @param parse Logical, defaults to TRUE, indicating whether to convert
#'   response object into a tibble data frame
#' @return A tibble
#' @export
covid19_us <- function(parse = TRUE) {
  r <- covid19_get("https://covidtracking.com/api/us")
  if (parse) {
    r <- covid19_parse(r)
  }
  r
}

#' U.S. Daily
#'
#' Daily reported number of cases of COVID-19 in the United States
#'
#' @param parse Logical, defaults to TRUE, indicating whether to convert
#'   response object into a tibble data frame
#' @return A tibble
#' @export
covid19_us_daily <- function(parse = TRUE) {
  r <- covid19_get("https://covidtracking.com/api/us_daily")
  if (parse) {
    r <- covid19_parse(r)
  }
  r
}

#' Counties
#'
#' Reported number of cases of COVID-19 by U.S. county
#'
#' @param parse Logical, defaults to TRUE, indicating whether to convert
#'   response object into a tibble data frame
#' @return A tibble
#' @export
covid19_counties <- function(parse = TRUE) {
  r <- covid19_get("https://covidtracking.com/api/counties")
  if (parse) {
    r <- covid19_parse(r)
  }
  r
}

#' URLs
#'
#' URLs returned by covidtracking.com
#'
#' @param parse Logical, defaults to TRUE, indicating whether to convert
#'   response object into a tibble data frame
#' @return A tibble
#' @export
covid19_urls <- function(parse = TRUE) {
  r <- covid19_get("https://covidtracking.com/api/urls")
  if (parse) {
    r <- covid19_parse(r)
  }
  r
}

#' Screenshots
#'
#' Screenshot records for reported number of cases of COVID-19 in the U.S.
#'
#' @param parse Logical, defaults to TRUE, indicating whether to convert
#'   response object into a tibble data frame
#' @return A tibble
#' @export
covid19_screenshots <- function(parse = TRUE) {
  r <- covid19_get("https://covidtracking.com/api/screenshots")
  if (parse) {
    r <- covid19_parse(r)
  }
  r
}

#' Press
#'
#' Press about COVID-19
#'
#' @param parse Logical, defaults to TRUE, indicating whether to convert
#'   response object into a tibble data frame
#' @return A tibble
#' @export
covid19_press <- function(parse = TRUE) {
  r <- covid19_get("https://covidtracking.com/api/press")
  if (parse) {
    r <- covid19_parse(r)
  }
  r
}
