
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
    #> 1 2020-06-03     56  1843315 16371635    3556            32081           216640
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
    #> # A tibble: 134 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-03     56  1843315 16371635    3556            32081           216640
    #>  2 2020-06-02     56  1823269 15934569    4054            32728           214382
    #>  3 2020-06-01     56  1799761 15540921    3455            33237           212704
    #>  4 2020-05-31     56  1783570 15153321    3270            33840           210083
    #>  5 2020-05-30     56  1761025 14769660    1668            34650           209134
    #>  6 2020-05-29     56  1736571 14362944    2978            35871           207694
    #>  7 2020-05-28     56  1712637 13894602    1906            36967           205974
    #>  8 2020-05-27     56  1690157 13508987    3132            37251           203578
    #>  9 2020-05-26     56  1671035 13236006    1549            36609           201872
    #> 10 2020-05-25     56  1654829 12950113    3368            36668           184570
    #> # … with 124 more rows, and 18 more variables: in_icu_currently <int>,
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
    #> # A tibble: 56 x 35
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-03 AK         505    57677      NA               11               NA
    #>  2 2020-06-03 AL       18851   212743      NA               NA             1900
    #>  3 2020-06-03 AR        8067   134413      NA              132              731
    #>  4 2020-06-03 AS           0      174      NA               NA               NA
    #>  5 2020-06-03 AZ       22233   222292      NA             1092             3129
    #>  6 2020-06-03 CA      117687  2013607      NA             4458               NA
    #>  7 2020-06-03 CO       26788   167389      NA              388             4419
    #>  8 2020-06-03 CT       43091   233345      NA              406            13793
    #>  9 2020-06-03 DC        9016    40546      NA              285               NA
    #> 10 2020-06-03 DE        9712    55208      NA              153               NA
    #> # … with 46 more rows, and 28 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, data_quality_grade <chr>,
    #> #   last_update_et <chr>, date_modified <dttm>, check_time_et <chr>,
    #> #   death <int>, hospitalized <int>, date_checked <dttm>, fips <chr>,
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
    #> # A tibble: 5,057 x 35
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-03 AK         505    57677      NA               11               NA
    #>  2 2020-06-03 AL       18851   212743      NA               NA             1900
    #>  3 2020-06-03 AR        8067   134413      NA              132              731
    #>  4 2020-06-03 AS           0      174      NA               NA               NA
    #>  5 2020-06-03 AZ       22233   222292      NA             1092             3129
    #>  6 2020-06-03 CA      117687  2013607      NA             4458               NA
    #>  7 2020-06-03 CO       26788   167389      NA              388             4419
    #>  8 2020-06-03 CT       43091   233345      NA              406            13793
    #>  9 2020-06-03 DC        9016    40546      NA              285               NA
    #> 10 2020-06-03 DE        9712    55208      NA              153               NA
    #> # … with 5,047 more rows, and 28 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, data_quality_grade <chr>,
    #> #   last_update_et <chr>, date_modified <chr>, check_time_et <chr>,
    #> #   death <int>, hospitalized <int>, date_checked <chr>, fips <chr>,
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
    #> # A tibble: 56 x 10
    #>    state notes covid19site covid19site_sec… twitter covid19site_old name  fips 
    #>    <chr> <lgl> <chr>       <chr>            <chr>   <chr>           <chr> <chr>
    #>  1 AK    NA    http://dhs… "http://dhss.al… "@Alas… http://dhss.al… Alas… 02   
    #>  2 AL    NA    https://al… "https://dph1.a… "@alpu… http://www.ala… Alab… 01   
    #>  3 AR    NA    https://ww… "https://adem.m… "@adhp… https://www.he… Arka… 05   
    #>  4 AS    NA    https://ww… "https://www.fa… ""      http://www.sam… Amer… 60   
    #>  5 AZ    NA    https://ww… "https://www.az… "@azdh… https://www.az… Ariz… 04   
    #>  6 CA    NA    https://ww… "https://www.cd… "@CAPu… https://www.cd… Cali… 06   
    #>  7 CO    NA    https://co… "https://covid1… "@cdph… https://www.co… Colo… 08   
    #>  8 CT    NA    https://da… ""               "@ctdp… https://portal… Conn… 09   
    #>  9 DC    NA    https://co… ""               "@_DCH… https://corona… Dist… 11   
    #> 10 DE    NA    https://dh… ""               "@Dela… https://dhss.d… Dela… 10   
    #> # … with 46 more rows, and 2 more variables: pui <chr>, pum <lgl>
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
