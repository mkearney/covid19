
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covid19

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/covid19)](https://CRAN.R-project.org/package=covid19)
[![](https://img.shields.io/github/last-commit/mkearney/covid19.svg)](https://github.com/mkearney/covid19/commits/master)
[![](https://img.shields.io/badge/devel%20version-0.0.1-greenyellow.svg)](https://github.com/mkearney/covid19)
<!-- badges: end -->

An API wrapper for [covidtracking.com](https://covidtracking.com/api/).

## Installation

You can install the from Github with

``` r
remotes::install_github("mkearney/covid19")
```

## Endpoints

Endpoint functions calls all follow the convention of
`covid19_{endpoint}`. Exported functions and examples of output data are
grouped by similar endpoints and included below.

### U.S.

  - **`covid19_us()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`) for entire
    the U.S.
    
    ``` r
    covid19_us()
    #> # A tibble: 1 x 25
    #>   date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>   <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #> 1 2020-06-25     56  2410978 26796842    2133            31532           236993
    #> # … with 18 more variables: in_icu_currently <int>, in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, date_checked <dttm>, death <int>, hospitalized <int>,
    #> #   last_modified <dttm>, total <int>, total_test_results <int>, pos_neg <int>,
    #> #   death_increase <int>, hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>, hash <chr>
    ```

  - **`covid19_us_daily()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`, `states`)
    by day
    
    ``` r
    covid19_us_daily()
    #> # A tibble: 156 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-25     56  2410978 26796842    2133            31532           236993
    #>  2 2020-06-24     56  2369039 26198316    2049            30826           235736
    #>  3 2020-06-23     56  2330367 25724594    1891            29920           234426
    #>  4 2020-06-22     56  2297383 25256198    2028            28490           233169
    #>  5 2020-06-21     56  2270347 24818476    2084            27718           232369
    #>  6 2020-06-20     56  2243069 24333555    2108            27757           231855
    #>  7 2020-06-19     56  2211139 23799037    2032            28392           231110
    #>  8 2020-06-18     56  2180129 23258846    1903            28185           229497
    #>  9 2020-06-17     56  2152656 22768619    1745            28311           228457
    #> 10 2020-06-16     56  2128814 22303739    1604            28028           227327
    #> # … with 146 more rows, and 18 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, date_checked <dttm>,
    #> #   death <int>, hospitalized <int>, last_modified <dttm>, total <int>,
    #> #   total_test_results <int>, pos_neg <int>, death_increase <int>,
    #> #   hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>, hash <chr>
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> # A tibble: 56 x 39
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-25 AK         816    98636      NA               14               NA
    #>  2 2020-06-25 AL       33206   336252      NA              693             2612
    #>  3 2020-06-25 AR       18062   259318      NA              284             1245
    #>  4 2020-06-25 AS           0      696      NA               NA               NA
    #>  5 2020-06-25 AZ       63030   401166      NA             2453             4406
    #>  6 2020-06-25 CA      195571  3498774      NA             5522               NA
    #>  7 2020-06-25 CO       31155   264910      NA              247             5375
    #>  8 2020-06-25 CT       45994   362949      NA              122            10268
    #>  9 2020-06-25 DC       10159    76572      NA              157               NA
    #> 10 2020-06-25 DE       10980    90012      NA               93               NA
    #> # … with 46 more rows, and 32 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, data_quality_grade <chr>,
    #> #   last_update_et <chr>, date_modified <dttm>, check_time_et <chr>,
    #> #   death <int>, hospitalized <int>, date_checked <dttm>,
    #> #   total_tests_viral <int>, positive_tests_viral <int>,
    #> #   negative_tests_viral <int>, positive_cases_viral <int>, fips <chr>,
    #> #   positive_increase <int>, negative_increase <int>, total <int>,
    #> #   total_test_results <int>, total_test_results_increase <int>, pos_neg <int>,
    #> #   death_increase <int>, hospitalized_increase <int>, hash <chr>,
    #> #   commercial_score <int>, negative_regular_score <int>, negative_score <int>,
    #> #   positive_score <int>, score <int>, grade <chr>
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 6,289 x 39
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-25 AK         816    98636      NA               14               NA
    #>  2 2020-06-25 AL       33206   336252      NA              693             2612
    #>  3 2020-06-25 AR       18062   259318      NA              284             1245
    #>  4 2020-06-25 AS           0      696      NA               NA               NA
    #>  5 2020-06-25 AZ       63030   401166      NA             2453             4406
    #>  6 2020-06-25 CA      195571  3498774      NA             5522               NA
    #>  7 2020-06-25 CO       31155   264910      NA              247             5375
    #>  8 2020-06-25 CT       45994   362949      NA              122            10268
    #>  9 2020-06-25 DC       10159    76572      NA              157               NA
    #> 10 2020-06-25 DE       10980    90012      NA               93               NA
    #> # … with 6,279 more rows, and 32 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, data_quality_grade <chr>,
    #> #   last_update_et <chr>, date_modified <chr>, check_time_et <chr>,
    #> #   death <int>, hospitalized <int>, date_checked <chr>,
    #> #   total_tests_viral <int>, positive_tests_viral <int>,
    #> #   negative_tests_viral <int>, positive_cases_viral <int>, fips <chr>,
    #> #   positive_increase <int>, negative_increase <int>, total <int>,
    #> #   total_test_results <int>, total_test_results_increase <int>, pos_neg <int>,
    #> #   death_increase <int>, hospitalized_increase <int>, hash <chr>,
    #> #   commercial_score <int>, negative_regular_score <int>, negative_score <int>,
    #> #   positive_score <int>, score <int>, grade <chr>
    ```

  - **`covid19_states_info()`**: State government links, Twitter
    accounts, notes, etc.
    
    ``` r
    covid19_states_info()
    #> # A tibble: 56 x 11
    #>    state notes covid19site covid19site_sec… covid19site_ter… twitter
    #>    <chr> <chr> <chr>       <chr>            <chr>            <chr>  
    #>  1 AK    "Tot… http://dhs… "http://dhss.al… "https://alaska… "@Alas…
    #>  2 AL    "Neg… https://al… "https://dph1.a… ""               "@alpu…
    #>  3 AR     <NA> https://ww… "https://adem.m… ""               "@adhp…
    #>  4 AS    "Our… https://ww… "https://www.fa… ""               ""     
    #>  5 AZ    "Das… https://ww… "https://tablea… "https://tablea… "@azdh…
    #>  6 CA    "Cal… https://ww… "https://www.cd… ""               "@CAPu…
    #>  7 CO    "Neg… https://co… "https://covid1… "https://covid1… "@cdph…
    #>  8 CT    "Neg… https://da… ""               ""               "@ctdp…
    #>  9 DC    "Pos… https://co… ""               ""               "@_DCH…
    #> 10 DE    "As … https://dh… ""               ""               "@Dela…
    #> # … with 46 more rows, and 5 more variables: covid19site_old <chr>, name <chr>,
    #> #   fips <chr>, pui <chr>, pum <lgl>
    ```

![](man/figures/README-state-trajectories.png)

### Counties

  - **`covid19_counties()`**: County-level links for government sites,
    Twitter accounts, etc.
    
    ``` r
    covid19_counties()
    #> # A tibble: 0 x 0
    ```

### Other

  - **`covid19_urls()`**: Links to official state government sites
    
    ``` r
    covid19_urls()
    #> # A tibble: 0 x 0
    ```

  - **`covid19_press()`**: Information (`title`, `url`, `publication`,
    `author`, etc.) about publications
    
    ``` r
    covid19_press()
    #> # A tibble: 0 x 0
    ```

  - **`covid19_screenshots()`**: Information and paths to screenshots of
    original data sources
    
    ``` r
    covid19_screenshots()
    #> # A tibble: 0 x 0
    ```
