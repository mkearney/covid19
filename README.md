
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
    #> 1 2020-09-20     56  6770401 85299596   13192            28615           395197
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
    #> [1] 20200311
    #> 
    #> $states
    #> [1] 51
    #> 
    #> $positive
    #> [1] 1834
    #> 
    #> $negative
    #> [1] 11188
    #> 
    #> $pending
    #> [1] 563
    #> 
    #> $hospitalizedCurrently
    #> NULL
    #> 
    #> $hospitalizedCumulative
    #> [1] 11
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
    #> [1] "2020-03-11T00:00:00Z"
    #> 
    #> $death
    #> [1] 43
    #> 
    #> $hospitalized
    #> [1] 11
    #> 
    #> $totalTestResults
    #> [1] 19936
    #> 
    #> $lastModified
    #> [1] "2020-03-11T00:00:00Z"
    #> 
    #> $total
    #> [1] 0
    #> 
    #> $posNeg
    #> [1] 0
    #> 
    #> $deathIncrease
    #> [1] 6
    #> 
    #> $hospitalizedIncrease
    #> [1] 3
    #> 
    #> $negativeIncrease
    #> [1] 3421
    #> 
    #> $positiveIncrease
    #> [1] 449
    #> 
    #> $totalTestResultsIncrease
    #> [1] 3968
    #> 
    #> $hash
    #> [1] "f846675fe11d491e5c9009d0541b0850ba4498d5"
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> $date
    #> [1] 20200920
    #> 
    #> $state
    #> [1] "TX"
    #> 
    #> $positive
    #> [1] 688534
    #> 
    #> $negative
    #> [1] 4904954
    #> 
    #> $pending
    #> NULL
    #> 
    #> $totalTestResults
    #> [1] 5593488
    #> 
    #> $hospitalizedCurrently
    #> [1] 3081
    #> 
    #> $hospitalizedCumulative
    #> NULL
    #> 
    #> $inIcuCurrently
    #> [1] 1057
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
    #> [1] 609210
    #> 
    #> $dataQualityGrade
    #> [1] "A"
    #> 
    #> $lastUpdateEt
    #> [1] "9/20/2020 15:50"
    #> 
    #> $dateModified
    #> [1] "2020-09-20T15:50:00Z"
    #> 
    #> $checkTimeEt
    #> [1] "09/20 11:50"
    #> 
    #> $death
    #> [1] 14893
    #> 
    #> $hospitalized
    #> NULL
    #> 
    #> $dateChecked
    #> [1] "2020-09-20T15:50:00Z"
    #> 
    #> $totalTestsViral
    #> [1] 5593488
    #> 
    #> $positiveTestsViral
    #> NULL
    #> 
    #> $negativeTestsViral
    #> NULL
    #> 
    #> $positiveCasesViral
    #> [1] 688534
    #> 
    #> $deathConfirmed
    #> NULL
    #> 
    #> $deathProbable
    #> NULL
    #> 
    #> $totalTestEncountersViral
    #> NULL
    #> 
    #> $totalTestsPeopleViral
    #> NULL
    #> 
    #> $totalTestsAntibody
    #> [1] 385351
    #> 
    #> $positiveTestsAntibody
    #> [1] 34639
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
    #> [1] 63908
    #> 
    #> $positiveTestsAntigen
    #> [1] 7793
    #> 
    #> $fips
    #> [1] "48"
    #> 
    #> $positiveIncrease
    #> [1] 2466
    #> 
    #> $negativeIncrease
    #> [1] 27846
    #> 
    #> $total
    #> [1] 5593488
    #> 
    #> $totalTestResultsSource
    #> [1] "posNeg"
    #> 
    #> $totalTestResultsIncrease
    #> [1] 30312
    #> 
    #> $posNeg
    #> [1] 5593488
    #> 
    #> $deathIncrease
    #> [1] 45
    #> 
    #> $hospitalizedIncrease
    #> [1] 0
    #> 
    #> $hash
    #> [1] "dda19cfcd03fde717fc7185489907e372c264b25"
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
    #> # A tibble: 11,242 x 54
    #>    date       state positive negative pending total_test_resu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-20 AK        7767   419158      NA           426925               43
    #>  2 2020-09-20 AL      144962   923366      NA          1054017              780
    #>  3 2020-09-20 AR       75723   810294      NA           883984              404
    #>  4 2020-09-20 AS           0     1571      NA             1571               NA
    #>  5 2020-09-20 AZ      214018  1169906      NA          1383924              472
    #>  6 2020-09-20 CA      778400 12744758      NA         13523158             3441
    #>  7 2020-09-20 CO       64356   761346      NA          1195379              237
    #>  8 2020-09-20 CT       55527  1366621      NA          1422148               77
    #>  9 2020-09-20 DC       14955   340189      NA           355144               86
    #> 10 2020-09-20 DE       19566   251855      NA           271421               60
    #> # … with 11,232 more rows, and 47 more variables:
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
