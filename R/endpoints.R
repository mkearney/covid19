

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
  r <- covid19_get("https://covidtracking.com/api/us/daily")
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
