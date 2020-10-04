
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
    #> 1 2020-10-04     56  7383499 96359756   11471            29942           413531
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
    #> # A tibble: 257 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-10-04     56  7383499 96359756   11471            29942           413531
    #>  2 2020-10-03     56  7345232 95536741   11464            30108           412889
    #>  3 2020-10-02     56  7294029 94692886   10813            30697           411751
    #>  4 2020-10-01     56  7244495 93715700   13003            30742           410409
    #>  5 2020-09-30     56  7198801 92955835    9431            30877           408649
    #>  6 2020-09-29     56  7154377 92281568    7695            30391           407059
    #>  7 2020-09-28     56  7117430 91574039   11112            29608           405326
    #>  8 2020-09-27     56  7080906 90655018   11136            29434           404085
    #>  9 2020-09-26     56  7045452 89985494   11183            29554           403325
    #> 10 2020-09-25     56  6997596 89096343   10905            29769           402171
    #> # … with 247 more rows, and 18 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, date_checked <dttm>,
    #> #   death <int>, hospitalized <int>, total_test_results <int>,
    #> #   last_modified <dttm>, total <int>, pos_neg <int>, death_increase <int>,
    #> #   hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>, hash <chr>
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> $date
    #> [1] 20201004
    #> 
    #> $state
    #> [1] "NC"
    #> 
    #> $positive
    #> [1] 217496
    #> 
    #> $negative
    #> [1] 2943472
    #> 
    #> $pending
    #> NULL
    #> 
    #> $totalTestResults
    #> [1] 3160968
    #> 
    #> $hospitalizedCurrently
    #> [1] 907
    #> 
    #> $hospitalizedCumulative
    #> NULL
    #> 
    #> $inIcuCurrently
    #> [1] 266
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
    #> [1] 184422
    #> 
    #> $dataQualityGrade
    #> [1] "A+"
    #> 
    #> $lastUpdateEt
    #> [1] "10/4/2020 12:00"
    #> 
    #> $dateModified
    #> [1] "2020-10-04T12:00:00Z"
    #> 
    #> $checkTimeEt
    #> [1] "10/04 08:00"
    #> 
    #> $death
    #> [1] 3634
    #> 
    #> $hospitalized
    #> NULL
    #> 
    #> $dateChecked
    #> [1] "2020-10-04T12:00:00Z"
    #> 
    #> $totalTestsViral
    #> [1] 3155433
    #> 
    #> $positiveTestsViral
    #> NULL
    #> 
    #> $negativeTestsViral
    #> NULL
    #> 
    #> $positiveCasesViral
    #> [1] 211961
    #> 
    #> $deathConfirmed
    #> [1] 3603
    #> 
    #> $deathProbable
    #> [1] 31
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
    #> [1] 3996
    #> 
    #> $positiveTestsAntigen
    #> NULL
    #> 
    #> $fips
    #> [1] "37"
    #> 
    #> $positiveIncrease
    #> [1] 610
    #> 
    #> $negativeIncrease
    #> [1] 24092
    #> 
    #> $total
    #> [1] 3160968
    #> 
    #> $totalTestResultsSource
    #> [1] "posNeg"
    #> 
    #> $totalTestResultsIncrease
    #> [1] 24702
    #> 
    #> $posNeg
    #> [1] 3160968
    #> 
    #> $deathIncrease
    #> [1] 5
    #> 
    #> $hospitalizedIncrease
    #> [1] 0
    #> 
    #> $hash
    #> [1] "32387a0d0a761e071807133edde8148ea96b1b9c"
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
    #> # A tibble: 12,026 x 54
    #>    date       state positive negative pending total_test_resu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-10-04 AK        9376   467442      NA           476818               51
    #>  2 2020-10-04 AL      159169  1022073      NA          1162518              757
    #>  3 2020-10-04 AR       87013   989037      NA          1072343              499
    #>  4 2020-10-04 AS           0     1616      NA             1616               NA
    #>  5 2020-10-04 AZ      220754  1280104      NA          1496131              545
    #>  6 2020-10-04 CA      823729 14336558      NA         15160287             3129
    #>  7 2020-10-04 CO       72555   874840      NA          1414336              296
    #>  8 2020-10-04 CT       58297  1618113      NA          1676410              110
    #>  9 2020-10-04 DC       15519   384306      NA           399825               95
    #> 10 2020-10-04 DE       21243   272846      NA           294089               82
    #> # … with 12,016 more rows, and 47 more variables:
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
    #> # A tibble: 56 x 16
    #>    state notes covid19site covid19site_sec… covid19site_ter… covid19site_qua…
    #>    <chr> <chr> <chr>       <chr>            <chr>            <chr>           
    #>  1 AK    "Ala… http://dhs… "https://experi… "https://alaska… ""              
    #>  2 AL    "Ala… https://al… "https://alpubl… "https://servic… ""              
    #>  3 AR    "On … https://ww… "https://experi… "https://experi… ""              
    #>  4 AS    "Ame… https://ww… "https://www.fa… ""               ""              
    #>  5 AZ    "Ari… https://ww… "https://tablea… "https://tablea… ""              
    #>  6 CA    "Pri… https://up… "https://public… "https://public… ""              
    #>  7 CO    "On … https://co… "https://public… ""               ""              
    #>  8 CT    "On … https://da… ""               ""               ""              
    #>  9 DC    "On … https://co… ""               ""               ""              
    #> 10 DE    "On … https://my… ""               ""               ""              
    #> # … with 46 more rows, and 10 more variables: covid19site_quinary <chr>,
    #> #   twitter <chr>, covid19site_old <chr>,
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
