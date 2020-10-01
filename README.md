
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
    #> 1 2020-09-30     56  7198589 92952359    9431            30876           408649
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
    #> # A tibble: 253 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-30     56  7198589 92952359    9431            30876           408649
    #>  2 2020-09-29     56  7154198 92281568    7695            30391           407059
    #>  3 2020-09-28     56  7117251 91574039   11112            29608           405326
    #>  4 2020-09-27     56  7080727 90655018   11136            29434           404085
    #>  5 2020-09-26     56  7045273 89985494   11183            29554           403325
    #>  6 2020-09-25     56  6997437 89096343   10905            29769           402171
    #>  7 2020-09-24     56  6941911 88239824   12008            30043           400840
    #>  8 2020-09-23     56  6898139 87416375   10535            29905           399252
    #>  9 2020-09-22     56  6859572 86615497    7999            29459           397801
    #> 10 2020-09-21     56  6810133 85942856   13241            28755           396355
    #> # … with 243 more rows, and 18 more variables: in_icu_currently <int>,
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
    #> [1] 20200930
    #> 
    #> $state
    #> [1] "OK"
    #> 
    #> $positive
    #> [1] 87199
    #> 
    #> $negative
    #> [1] 1116829
    #> 
    #> $pending
    #> [1] 4926
    #> 
    #> $totalTestResults
    #> [1] 1204028
    #> 
    #> $hospitalizedCurrently
    #> [1] 628
    #> 
    #> $hospitalizedCumulative
    #> [1] 6449
    #> 
    #> $inIcuCurrently
    #> [1] 245
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
    #> [1] 73100
    #> 
    #> $dataQualityGrade
    #> [1] "A+"
    #> 
    #> $lastUpdateEt
    #> [1] "9/30/2020 00:00"
    #> 
    #> $dateModified
    #> [1] "2020-09-30T00:00:00Z"
    #> 
    #> $checkTimeEt
    #> [1] "09/29 20:00"
    #> 
    #> $death
    #> [1] 1031
    #> 
    #> $hospitalized
    #> [1] 6449
    #> 
    #> $dateChecked
    #> [1] "2020-09-30T00:00:00Z"
    #> 
    #> $totalTestsViral
    #> [1] 1217581
    #> 
    #> $positiveTestsViral
    #> [1] 98631
    #> 
    #> $negativeTestsViral
    #> [1] 1116829
    #> 
    #> $positiveCasesViral
    #> [1] 87199
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
    #> [1] 78836
    #> 
    #> $positiveTestsAntibody
    #> [1] 3997
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
    #> [1] "40"
    #> 
    #> $positiveIncrease
    #> [1] 980
    #> 
    #> $negativeIncrease
    #> [1] 10645
    #> 
    #> $total
    #> [1] 1208954
    #> 
    #> $totalTestResultsSource
    #> [1] "posNeg"
    #> 
    #> $totalTestResultsIncrease
    #> [1] 11625
    #> 
    #> $posNeg
    #> [1] 1204028
    #> 
    #> $deathIncrease
    #> [1] 13
    #> 
    #> $hospitalizedIncrease
    #> [1] 83
    #> 
    #> $hash
    #> [1] "eb4c713dd38f9c5409f029d77f2b4860eacc5dfd"
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
    #> # A tibble: 11,802 x 54
    #>    date       state positive negative pending total_test_resu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-30 AK        8780   448427      NA           457207               53
    #>  2 2020-09-30 AL      154701   994475      NA          1132039              776
    #>  3 2020-09-30 AR       83697   949107      NA          1029717              484
    #>  4 2020-09-30 AS           0     1571      NA             1571               NA
    #>  5 2020-09-30 AZ      218507  1243641      NA          1457575              560
    #>  6 2020-09-30 CA      810625 13894577      NA         14705202             3267
    #>  7 2020-09-30 CO       70025   837127      NA          1341180              268
    #>  8 2020-09-30 CT       57550  1536443      NA          1593993              104
    #>  9 2020-09-30 DC       15326   372534      NA           387860               95
    #> 10 2020-09-30 DE       20613   265949      NA           286562               72
    #> # … with 11,792 more rows, and 47 more variables:
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
