
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
    #> 1 2020-09-27     56  7080459 90648092   11136            29432           404083
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
    #> # A tibble: 250 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-27     56  7080459 90648092   11136            29432           404083
    #>  2 2020-09-26     56  7045170 89982483   11183            29554           403325
    #>  3 2020-09-25     56  6997437 89096343   10905            29769           402171
    #>  4 2020-09-24     56  6941911 88239824   12008            30043           400840
    #>  5 2020-09-23     56  6898139 87416375   10535            29905           399252
    #>  6 2020-09-22     56  6859572 86615497    7999            29459           397801
    #>  7 2020-09-21     56  6810133 85942856   13241            28755           396355
    #>  8 2020-09-20     56  6770661 85303584   13192            28608           395215
    #>  9 2020-09-19     56  6734366 84512983   13217            29035           394699
    #> 10 2020-09-18     56  6688827 83566093   11805            29501           393632
    #> # … with 240 more rows, and 18 more variables: in_icu_currently <int>,
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
    #> [1] 20200927
    #> 
    #> $state
    #> [1] "MO"
    #> 
    #> $positive
    #> [1] 123406
    #> 
    #> $negative
    #> [1] 1174700
    #> 
    #> $pending
    #> NULL
    #> 
    #> $totalTestResults
    #> [1] 1298106
    #> 
    #> $hospitalizedCurrently
    #> [1] 1125
    #> 
    #> $hospitalizedCumulative
    #> NULL
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
    #> $dataQualityGrade
    #> [1] "B"
    #> 
    #> $lastUpdateEt
    #> [1] "9/27/2020 00:00"
    #> 
    #> $dateModified
    #> [1] "2020-09-27T00:00:00Z"
    #> 
    #> $checkTimeEt
    #> [1] "09/26 20:00"
    #> 
    #> $death
    #> [1] 2063
    #> 
    #> $hospitalized
    #> NULL
    #> 
    #> $dateChecked
    #> [1] "2020-09-27T00:00:00Z"
    #> 
    #> $totalTestsViral
    #> [1] 1699319
    #> 
    #> $positiveTestsViral
    #> [1] 129549
    #> 
    #> $negativeTestsViral
    #> [1] 1566917
    #> 
    #> $positiveCasesViral
    #> [1] 123406
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
    #> [1] 1298106
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
    #> [1] 74259
    #> 
    #> $positiveTestsPeopleAntibody
    #> [1] 3518
    #> 
    #> $negativeTestsPeopleAntibody
    #> [1] 70741
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
    #> [1] "29"
    #> 
    #> $positiveIncrease
    #> [1] 1392
    #> 
    #> $negativeIncrease
    #> [1] 7545
    #> 
    #> $total
    #> [1] 1298106
    #> 
    #> $totalTestResultsSource
    #> [1] "posNeg"
    #> 
    #> $totalTestResultsIncrease
    #> [1] 8937
    #> 
    #> $posNeg
    #> [1] 1298106
    #> 
    #> $deathIncrease
    #> [1] 0
    #> 
    #> $hospitalizedIncrease
    #> [1] 0
    #> 
    #> $hash
    #> [1] "51fe3838db32d650b324e4d9dccd493be046abbc"
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
    #> # A tibble: 11,634 x 54
    #>    date       state positive negative pending total_test_resu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-27 AK        8431   434554      NA           442869               43
    #>  2 2020-09-27 AL      152321   975685      NA          1111239              741
    #>  3 2020-09-27 AR       81242   861892      NA           940627              452
    #>  4 2020-09-27 AS           0     1571      NA             1571               NA
    #>  5 2020-09-27 AZ      217237  1230608      NA          1443323              483
    #>  6 2020-09-27 CA      802308 13531190      NA         14333498             3129
    #>  7 2020-09-27 CO       68510   814332      NA          1295655              248
    #>  8 2020-09-27 CT       56587  1462564      NA          1519151               76
    #>  9 2020-09-27 DC       15250   365909      NA           381159               96
    #> 10 2020-09-27 DE       20260   261764      NA           282024               60
    #> # … with 11,624 more rows, and 47 more variables:
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
