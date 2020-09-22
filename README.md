
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
    #> 1 2020-09-21     56  6810128 85941020   13241            28754           396354
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
    #> [1] 20200330
    #> 
    #> $states
    #> [1] 56
    #> 
    #> $positive
    #> [1] 173442
    #> 
    #> $negative
    #> [1] 813851
    #> 
    #> $pending
    #> [1] 65369
    #> 
    #> $hospitalizedCurrently
    #> [1] 15772
    #> 
    #> $hospitalizedCumulative
    #> [1] 19819
    #> 
    #> $inIcuCurrently
    #> [1] 3087
    #> 
    #> $inIcuCumulative
    #> [1] 187
    #> 
    #> $onVentilatorCurrently
    #> [1] 451
    #> 
    #> $onVentilatorCumulative
    #> NULL
    #> 
    #> $recovered
    #> [1] 4560
    #> 
    #> $dateChecked
    #> [1] "2020-03-30T00:00:00Z"
    #> 
    #> $death
    #> [1] 3424
    #> 
    #> $hospitalized
    #> [1] 19819
    #> 
    #> $totalTestResults
    #> [1] 1010513
    #> 
    #> $lastModified
    #> [1] "2020-03-30T00:00:00Z"
    #> 
    #> $total
    #> [1] 0
    #> 
    #> $posNeg
    #> [1] 0
    #> 
    #> $deathIncrease
    #> [1] 589
    #> 
    #> $hospitalizedIncrease
    #> [1] 2536
    #> 
    #> $negativeIncrease
    #> [1] 96706
    #> 
    #> $positiveIncrease
    #> [1] 22042
    #> 
    #> $totalTestResultsIncrease
    #> [1] 119396
    #> 
    #> $hash
    #> [1] "e82827404e380b9e8325df9bb20e09b6a72bf558"
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> $date
    #> [1] 20200921
    #> 
    #> $state
    #> [1] "TN"
    #> 
    #> $positive
    #> [1] 184409
    #> 
    #> $negative
    #> [1] 2494997
    #> 
    #> $pending
    #> NULL
    #> 
    #> $totalTestResults
    #> [1] 2679406
    #> 
    #> $hospitalizedCurrently
    #> [1] 789
    #> 
    #> $hospitalizedCumulative
    #> [1] 8199
    #> 
    #> $inIcuCurrently
    #> [1] 272
    #> 
    #> $inIcuCumulative
    #> NULL
    #> 
    #> $onVentilatorCurrently
    #> [1] 130
    #> 
    #> $onVentilatorCumulative
    #> NULL
    #> 
    #> $recovered
    #> [1] 166674
    #> 
    #> $dataQualityGrade
    #> [1] "A+"
    #> 
    #> $lastUpdateEt
    #> [1] "9/21/2020 15:00"
    #> 
    #> $dateModified
    #> [1] "2020-09-21T15:00:00Z"
    #> 
    #> $checkTimeEt
    #> [1] "09/21 11:00"
    #> 
    #> $death
    #> [1] 2233
    #> 
    #> $hospitalized
    #> [1] 8199
    #> 
    #> $dateChecked
    #> [1] "2020-09-21T15:00:00Z"
    #> 
    #> $totalTestsViral
    #> [1] 2673187
    #> 
    #> $positiveTestsViral
    #> [1] 217209
    #> 
    #> $negativeTestsViral
    #> [1] 2455978
    #> 
    #> $positiveCasesViral
    #> [1] 178190
    #> 
    #> $deathConfirmed
    #> [1] 2152
    #> 
    #> $deathProbable
    #> [1] 81
    #> 
    #> $totalTestEncountersViral
    #> NULL
    #> 
    #> $totalTestsPeopleViral
    #> NULL
    #> 
    #> $totalTestsAntibody
    #> NULL
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
    #> [1] "47"
    #> 
    #> $positiveIncrease
    #> [1] 895
    #> 
    #> $negativeIncrease
    #> [1] 11385
    #> 
    #> $total
    #> [1] 2679406
    #> 
    #> $totalTestResultsSource
    #> [1] "posNeg"
    #> 
    #> $totalTestResultsIncrease
    #> [1] 12280
    #> 
    #> $posNeg
    #> [1] 2679406
    #> 
    #> $deathIncrease
    #> [1] 15
    #> 
    #> $hospitalizedIncrease
    #> [1] 40
    #> 
    #> $hash
    #> [1] "b16892e932cf1b35e44690bd6fdd79af00b2c312"
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
    #> # A tibble: 11,298 x 54
    #>    date       state positive negative pending total_test_resu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-21 AK        7838   420807      NA           428645               47
    #>  2 2020-09-21 AL      145780   928112      NA          1059517              802
    #>  3 2020-09-21 AR       76364   817238      NA           891524              439
    #>  4 2020-09-21 AS           0     1571      NA             1571               NA
    #>  5 2020-09-21 AZ      214251  1176711      NA          1390962              472
    #>  6 2020-09-21 CA      781694 12891088      NA         13672782             3459
    #>  7 2020-09-21 CO       64857   767852      NA          1208425              239
    #>  8 2020-09-21 CT       56024  1411742      NA          1467766               68
    #>  9 2020-09-21 DC       14978   342766      NA           357744               88
    #> 10 2020-09-21 DE       19667   253546      NA           273213               53
    #> # … with 11,288 more rows, and 47 more variables:
    #> #   hospitalized_cumulative <int>, in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, data_quality_grade <chr>,
    #> #   last_update_et <chr>, date_modified <chr>, check_time_et <chr>,
    #> #   death <int>, hospitalized <int>, date_checked <chr>,
    #> #   total_tests_viral <int>, positive_tests_viral <int>,
    #> #   negative_tests_viral <int>, positive_cases_viral <int>,
    #> #   death_confirmed <int>, death_probable <int>,
    #> #   total_test_encounters_viral <int>, total_tests_people_viral <int>,
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
