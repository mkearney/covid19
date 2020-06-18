
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
    #> 1 2020-06-18     56  2177888 23225610    1903            28185           229212
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
    #> # A tibble: 149 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-18     56  2177888 23225610    1903            28185           229212
    #>  2 2020-06-17     56  2150932 22786945    1745            28311           228094
    #>  3 2020-06-16     56  2127047 22322260    1604            28028           226926
    #>  4 2020-06-15     56  2103549 21881043    1619            27115           225570
    #>  5 2020-06-14     56  2085028 21450076    1672            27247           225061
    #>  6 2020-06-13     56  2063542 20986480    1698            27902           224420
    #>  7 2020-06-12     56  2038198 20491914    1783            28524           223281
    #>  8 2020-06-11     56  2014880 19931814    1816            29064           221983
    #>  9 2020-06-10     56  1992857 19505717    1737            30203           220602
    #> 10 2020-06-09     56  1972108 19103762    1661            30547           219089
    #> # … with 139 more rows, and 18 more variables: in_icu_currently <int>,
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
    #>  1 2020-06-18 AK         708    80477      NA               18               NA
    #>  2 2020-06-18 AL       28206   294328      NA              663             2373
    #>  3 2020-06-18 AR       13928   214506      NA              226             1074
    #>  4 2020-06-18 AS           0      174      NA               NA               NA
    #>  5 2020-06-18 AZ       43443   336289      NA             1667             3956
    #>  6 2020-06-18 CA      161099  2913431      NA             4584               NA
    #>  7 2020-06-18 CO       29673   232543      NA              270             5294
    #>  8 2020-06-18 CT       45440   327145      NA              176            10099
    #>  9 2020-06-18 DC        9903    62296      NA              189               NA
    #> 10 2020-06-18 DE       10499    78185      NA               79               NA
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
    #> # A tibble: 5,897 x 39
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-18 AK         708    80477      NA               18               NA
    #>  2 2020-06-18 AL       28206   294328      NA              663             2373
    #>  3 2020-06-18 AR       13928   214506      NA              226             1074
    #>  4 2020-06-18 AS           0      174      NA               NA               NA
    #>  5 2020-06-18 AZ       43443   336289      NA             1667             3956
    #>  6 2020-06-18 CA      161099  2913431      NA             4584               NA
    #>  7 2020-06-18 CO       29673   232543      NA              270             5294
    #>  8 2020-06-18 CT       45440   327145      NA              176            10099
    #>  9 2020-06-18 DC        9903    62296      NA              189               NA
    #> 10 2020-06-18 DE       10499    78185      NA               79               NA
    #> # … with 5,887 more rows, and 32 more variables: in_icu_currently <int>,
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
    #>  1 AK    "Tot… http://dhs… "http://dhss.al… ""               "@Alas…
    #>  2 AL    "Neg… https://al… "https://dph1.a… ""               "@alpu…
    #>  3 AR     <NA> https://ww… "https://adem.m… ""               "@adhp…
    #>  4 AS    "Our… https://ww… "https://www.fa… ""               ""     
    #>  5 AZ    "Das… https://ww… "https://www.az… ""               "@azdh…
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
