
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
    #> 1 2020-09-17     56  6641341 82709952   11768            29900           392173
    #> # … with 18 more variables: in_icu_currently <int>, in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, date_checked <dttm>, death <int>, hospitalized <int>,
    #> #   total_test_results <int>, last_modified <dttm>, total <int>, pos_neg <int>,
    #> #   death_increase <int>, hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>, hash <chr>
    ```

  - **`covid19_us_daily()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`, `states`)
    by day
    
    ``` r
    covid19_us_daily()
    #> $date
    #> [1] 20200324
    #> 
    #> $states
    #> [1] 56
    #> 
    #> $positive
    #> [1] 62371
    #> 
    #> $negative
    #> [1] 321763
    #> 
    #> $pending
    #> [1] 14433
    #> 
    #> $hospitalizedCurrently
    #> [1] 3902
    #> 
    #> $hospitalizedCumulative
    #> [1] 5117
    #> 
    #> $inIcuCurrently
    #> NULL
    #> 
    #> $inIcuCumulative
    #> NULL
    #> 
    #> $onVentilatorCurrently
    #> NULL
    #> 
    #> $onVentilatorCumulative
    #> NULL
    #> 
    #> $recovered
    #> NULL
    #> 
    #> $dateChecked
    #> [1] "2020-03-24T00:00:00Z"
    #> 
    #> $death
    #> [1] 815
    #> 
    #> $hospitalized
    #> [1] 5117
    #> 
    #> $totalTestResults
    #> [1] 403308
    #> 
    #> $lastModified
    #> [1] "2020-03-24T00:00:00Z"
    #> 
    #> $total
    #> [1] 0
    #> 
    #> $posNeg
    #> [1] 0
    #> 
    #> $deathIncrease
    #> [1] 234
    #> 
    #> $hospitalizedIncrease
    #> [1] 1180
    #> 
    #> $negativeIncrease
    #> [1] 58695
    #> 
    #> $positiveIncrease
    #> [1] 10769
    #> 
    #> $totalTestResultsIncrease
    #> [1] 69020
    #> 
    #> $hash
    #> [1] "8b9428b624d19af3cecb3650d0e25448d9165d23"
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> $date
    #> [1] 20200917
    #> 
    #> $state
    #> [1] "MI"
    #> 
    #> $positive
    #> [1] 126722
    #> 
    #> $negative
    #> [1] 3125009
    #> 
    #> $pending
    #> NULL
    #> 
    #> $totalTestResults
    #> [1] 3251731
    #> 
    #> $hospitalizedCurrently
    #> [1] 590
    #> 
    #> $hospitalizedCumulative
    #> NULL
    #> 
    #> $inIcuCurrently
    #> [1] 152
    #> 
    #> $inIcuCumulative
    #> NULL
    #> 
    #> $onVentilatorCurrently
    #> [1] 67
    #> 
    #> $onVentilatorCumulative
    #> NULL
    #> 
    #> $recovered
    #> [1] 85513
    #> 
    #> $dataQualityGrade
    #> [1] "A+"
    #> 
    #> $lastUpdateEt
    #> [1] "9/17/2020 00:00"
    #> 
    #> $dateModified
    #> [1] "2020-09-17T00:00:00Z"
    #> 
    #> $checkTimeEt
    #> [1] "09/16 20:00"
    #> 
    #> $death
    #> [1] 6955
    #> 
    #> $hospitalized
    #> NULL
    #> 
    #> $dateChecked
    #> [1] "2020-09-17T00:00:00Z"
    #> 
    #> $totalTestsViral
    #> [1] 3286221
    #> 
    #> $positiveTestsViral
    #> [1] 161212
    #> 
    #> $negativeTestsViral
    #> [1] 3125009
    #> 
    #> $positiveCasesViral
    #> [1] 114692
    #> 
    #> $deathConfirmed
    #> [1] 6632
    #> 
    #> $deathProbable
    #> [1] 323
    #> 
    #> $totalTestEncountersViral
    #> NULL
    #> 
    #> $totalTestsPeopleViral
    #> NULL
    #> 
    #> $totalTestsAntibody
    #> [1] 279980
    #> 
    #> $positiveTestsAntibody
    #> NULL
    #> 
    #> $negativeTestsAntibody
    #> NULL
    #> 
    #> $totalTestsPeopleAntibody
    #> NULL
    #> 
    #> $positiveTestsPeopleAntibody
    #> NULL
    #> 
    #> $negativeTestsPeopleAntibody
    #> NULL
    #> 
    #> $totalTestsPeopleAntigen
    #> NULL
    #> 
    #> $positiveTestsPeopleAntigen
    #> NULL
    #> 
    #> $totalTestsAntigen
    #> NULL
    #> 
    #> $positiveTestsAntigen
    #> NULL
    #> 
    #> $fips
    #> [1] "26"
    #> 
    #> $positiveIncrease
    #> [1] 980
    #> 
    #> $negativeIncrease
    #> [1] 32290
    #> 
    #> $total
    #> [1] 3251731
    #> 
    #> $totalTestResultsSource
    #> [1] "posNeg"
    #> 
    #> $totalTestResultsIncrease
    #> [1] 33270
    #> 
    #> $posNeg
    #> [1] 3251731
    #> 
    #> $deathIncrease
    #> [1] 12
    #> 
    #> $hospitalizedIncrease
    #> [1] 0
    #> 
    #> $hash
    #> [1] "65eb59487c8597e39712ad7ac0f0eb7ec0641bad"
    #> 
    #> $commercialScore
    #> [1] 0
    #> 
    #> $negativeRegularScore
    #> [1] 0
    #> 
    #> $negativeScore
    #> [1] 0
    #> 
    #> $positiveScore
    #> [1] 0
    #> 
    #> $score
    #> [1] 0
    #> 
    #> $grade
    #> [1] ""
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 11,074 x 54
    #>    date       state positive negative pending total_test_resu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-17 AK        7471   408392      NA           415863               41
    #>  2 2020-09-17 AL      141757   903156      NA          1044913              740
    #>  3 2020-09-17 AR       73211   783707      NA           856918              389
    #>  4 2020-09-17 AS           0     1571      NA             1571               NA
    #>  5 2020-09-17 AZ      211660  1141222      NA          1352882              594
    #>  6 2020-09-17 CA      766201 12313836      NA         13080037             3621
    #>  7 2020-09-17 CO       62686   739236      NA          1153853              248
    #>  8 2020-09-17 CT       55386  1352887      NA          1408273               75
    #>  9 2020-09-17 DC       14790   326528      NA           341318              100
    #> 10 2020-09-17 DE       19318   247850      NA           267168               66
    #> # … with 11,064 more rows, and 47 more variables:
    #> #   hospitalized_cumulative <int>, in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, data_quality_grade <chr>,
    #> #   last_update_et <chr>, date_modified <chr>, check_time_et <chr>,
    #> #   death <int>, hospitalized <int>, date_checked <chr>,
    #> #   total_tests_viral <int>, positive_tests_viral <int>,
    #> #   negative_tests_viral <int>, positive_cases_viral <int>,
    #> #   death_confirmed <int>, death_probable <int>,
    #> #   total_test_encounters_viral <dbl>, total_tests_people_viral <int>,
    #> #   total_tests_antibody <int>, positive_tests_antibody <int>,
    #> #   negative_tests_antibody <int>, total_tests_people_antibody <int>,
    #> #   positive_tests_people_antibody <int>, negative_tests_people_antibody <int>,
    #> #   total_tests_people_antigen <int>, positive_tests_people_antigen <int>,
    #> #   total_tests_antigen <int>, positive_tests_antigen <int>, fips <chr>,
    #> #   positive_increase <int>, negative_increase <int>, total <int>,
    #> #   total_test_results_source <chr>, total_test_results_increase <int>,
    #> #   pos_neg <int>, death_increase <int>, hospitalized_increase <int>,
    #> #   hash <chr>, commercial_score <int>, negative_regular_score <int>,
    #> #   negative_score <int>, positive_score <int>, score <int>, grade <chr>
    ```

  - **`covid19_states_info()`**: State government links, Twitter
    accounts, notes, etc.
    
    ``` r
    covid19_states_info()
    #> # A tibble: 56 x 14
    #>    state notes covid19site covid19site_sec… covid19site_ter… twitter
    #>    <chr> <chr> <chr>       <chr>            <chr>            <chr>  
    #>  1 AK    "Ala… http://dhs… "https://experi… "https://alaska… "@Alas…
    #>  2 AL    "Ala… https://al… "https://alpubl… "https://servic… "@alpu…
    #>  3 AR    "On … https://ww… "https://experi… "https://experi… "@adhp…
    #>  4 AS    "Ame… https://ww… "https://www.fa… ""               ""     
    #>  5 AZ    "Ari… https://ww… "https://tablea… "https://tablea… "@azdh…
    #>  6 CA    "Pri… https://up… "https://public… "https://public… "@CAPu…
    #>  7 CO    "On … https://co… "https://public… ""               "@cdph…
    #>  8 CT    "On … https://da… ""               ""               "@ctdp…
    #>  9 DC    "On … https://co… ""               ""               "@_DCH…
    #> 10 DE    "On … https://my… ""               ""               "@Dela…
    #> # … with 46 more rows, and 8 more variables: covid19site_old <chr>,
    #> #   covid_tracking_project_preferred_total_test_units <chr>,
    #> #   covid_tracking_project_preferred_total_test_field <chr>,
    #> #   total_test_results_field <chr>, name <chr>, fips <chr>, pui <chr>,
    #> #   pum <lgl>
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
