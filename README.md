
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
    #> 1 2021-01-29     56 25551231   1.15e8   12400           101003           801634
    #> # … with 18 more variables: in_icu_currently <int>, in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   date_checked <dttm>, death <int>, hospitalized <int>,
    #> #   total_test_results <int>, last_modified <dttm>, recovered <lgl>,
    #> #   total <int>, pos_neg <int>, death_increase <int>,
    #> #   hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>, hash <chr>
    ```

  - **`covid19_us_daily()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`, `states`)
    by day
    
    ``` r
    covid19_us_daily()
    #> # A tibble: 383 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2021-01-29     56 25551231   1.15e8   12400           101003           801634
    #>  2 2021-01-28     56 25385892   1.15e8   12095           104303           798799
    #>  3 2021-01-27     56 25230559   1.14e8   11972           107444           795299
    #>  4 2021-01-26     56 25078884   1.14e8    9879           108960           791165
    #>  5 2021-01-25     56 24935139   1.13e8   10963           109936           787460
    #>  6 2021-01-24     56 24802072   1.13e8   10892           110628           784945
    #>  7 2021-01-23     56 24658381   1.12e8   10864           113609           783036
    #>  8 2021-01-22     56 24483676   1.12e8   11247           116264           776384
    #>  9 2021-01-21     56 24294693   1.11e8   10907           119949           772059
    #> 10 2021-01-20     56 24110660   1.10e8   10841           122700           768006
    #> # … with 373 more rows, and 18 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, date_checked <dttm>, death <int>,
    #> #   hospitalized <int>, total_test_results <int>, last_modified <dttm>,
    #> #   recovered <lgl>, total <int>, pos_neg <int>, death_increase <int>,
    #> #   hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>, hash <chr>
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> # A tibble: 56 x 55
    #>    date       state positive probable_cases negative pending total_test_resu…
    #>    <date>     <chr>    <int>          <int>    <int>   <int> <chr>           
    #>  1 2021-01-29 AK       52335             NA       NA      NA totalTestsViral 
    #>  2 2021-01-29 AL      455582          96227  1767953      NA totalTestsPeopl…
    #>  3 2021-01-29 AR      292563          59007  2174144      NA totalTestsViral 
    #>  4 2021-01-29 AS           0             NA     2140      NA totalTestsViral 
    #>  5 2021-01-29 AZ      748260          47234  2722293      NA totalTestsViral 
    #>  6 2021-01-29 CA     3205947             NA       NA      NA totalTestsViral 
    #>  7 2021-01-29 CO      393421          19334  2011742      NA totalTestEncoun…
    #>  8 2021-01-29 CT      250023          15209  5458269      NA posNeg          
    #>  9 2021-01-29 DC       36414             NA       NA      NA totalTestEncoun…
    #> 10 2021-01-29 DE       76935           3682   504085      NA totalTestEncoun…
    #> # … with 46 more rows, and 48 more variables: total_test_results <int>,
    #> #   hospitalized_currently <int>, hospitalized_cumulative <int>,
    #> #   in_icu_currently <int>, in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, data_quality_grade <chr>, last_update_et <chr>,
    #> #   date_modified <chr>, check_time_et <chr>, death <int>, hospitalized <int>,
    #> #   date_checked <chr>, total_tests_viral <int>, positive_tests_viral <int>,
    #> #   negative_tests_viral <int>, positive_cases_viral <int>,
    #> #   death_confirmed <int>, death_probable <int>,
    #> #   total_test_encounters_viral <int>, total_tests_people_viral <int>,
    #> #   total_tests_antibody <int>, positive_tests_antibody <int>,
    #> #   negative_tests_antibody <int>, total_tests_people_antibody <int>,
    #> #   positive_tests_people_antibody <int>, negative_tests_people_antibody <int>,
    #> #   total_tests_people_antigen <int>, positive_tests_people_antigen <int>,
    #> #   total_tests_antigen <int>, positive_tests_antigen <int>, fips <chr>,
    #> #   positive_increase <int>, negative_increase <int>, total <int>,
    #> #   total_test_results_increase <int>, pos_neg <int>, death_increase <int>,
    #> #   hospitalized_increase <int>, hash <chr>, commercial_score <int>,
    #> #   negative_regular_score <int>, negative_score <int>, positive_score <int>,
    #> #   score <int>, grade <chr>
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 18,698 x 55
    #>    date       state positive probable_cases negative pending total_test_resu…
    #>    <date>     <chr>    <int>          <int>    <int>   <int> <chr>           
    #>  1 2021-01-29 AK       52335             NA       NA      NA totalTestsViral 
    #>  2 2021-01-29 AL      455582          96227  1767953      NA totalTestsPeopl…
    #>  3 2021-01-29 AR      292563          59007  2174144      NA totalTestsViral 
    #>  4 2021-01-29 AS           0             NA     2140      NA totalTestsViral 
    #>  5 2021-01-29 AZ      748260          47234  2722293      NA totalTestsViral 
    #>  6 2021-01-29 CA     3205947             NA       NA      NA totalTestsViral 
    #>  7 2021-01-29 CO      393421          19334  2011742      NA totalTestEncoun…
    #>  8 2021-01-29 CT      250023          15209  5458269      NA posNeg          
    #>  9 2021-01-29 DC       36414             NA       NA      NA totalTestEncoun…
    #> 10 2021-01-29 DE       76935           3682   504085      NA totalTestEncoun…
    #> # … with 18,688 more rows, and 48 more variables: total_test_results <int>,
    #> #   hospitalized_currently <int>, hospitalized_cumulative <int>,
    #> #   in_icu_currently <int>, in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, data_quality_grade <chr>, last_update_et <chr>,
    #> #   date_modified <chr>, check_time_et <chr>, death <int>, hospitalized <int>,
    #> #   date_checked <chr>, total_tests_viral <int>, positive_tests_viral <int>,
    #> #   negative_tests_viral <int>, positive_cases_viral <int>,
    #> #   death_confirmed <int>, death_probable <int>,
    #> #   total_test_encounters_viral <int>, total_tests_people_viral <int>,
    #> #   total_tests_antibody <int>, positive_tests_antibody <int>,
    #> #   negative_tests_antibody <int>, total_tests_people_antibody <int>,
    #> #   positive_tests_people_antibody <int>, negative_tests_people_antibody <int>,
    #> #   total_tests_people_antigen <int>, positive_tests_people_antigen <int>,
    #> #   total_tests_antigen <int>, positive_tests_antigen <int>, fips <chr>,
    #> #   positive_increase <int>, negative_increase <int>, total <int>,
    #> #   total_test_results_increase <int>, pos_neg <int>, death_increase <int>,
    #> #   hospitalized_increase <int>, hash <chr>, commercial_score <int>,
    #> #   negative_regular_score <int>, negative_score <int>, positive_score <int>,
    #> #   score <int>, grade <chr>
    ```

  - **`covid19_states_info()`**: State government links, Twitter
    accounts, notes, etc.
    
    ``` r
    covid19_states_info()
    #> # A tibble: 56 x 16
    #>    state notes covid19site covid19site_sec… covid19site_ter… covid19site_qua…
    #>    <chr> <chr> <chr>       <chr>            <chr>            <chr>           
    #>  1 AK    "Ala… http://dhs… https://experie… https://alaska-… https://service…
    #>  2 AL    "Ala… https://al… https://alpubli… https://service… <NA>            
    #>  3 AR    "Ark… https://ww… https://experie… https://adem.ma… https://adem.ma…
    #>  4 AS    "Ame… https://ww… https://www.fac… <NA>             <NA>            
    #>  5 AZ    "Ari… https://ww… https://tableau… https://tableau… https://tableau…
    #>  6 CA    "On … https://up… https://public.… https://public.… <NA>            
    #>  7 CO    "The… https://pu… https://public.… https://service… https://service…
    #>  8 CT    "Neg… https://da… https://data.ct… https://data.ct… <NA>            
    #>  9 DC    "On … https://co… https://coronav… https://microst… <NA>            
    #> 10 DE    "Thr… https://my… https://myhealt… <NA>             <NA>            
    #> # … with 46 more rows, and 10 more variables: covid19site_quinary <chr>,
    #> #   twitter <chr>, covid19site_old <chr>,
    #> #   covid_tracking_project_preferred_total_test_units <chr>,
    #> #   covid_tracking_project_preferred_total_test_field <chr>,
    #> #   total_test_results_field <chr>, pui <chr>, pum <lgl>, name <chr>,
    #> #   fips <chr>
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
