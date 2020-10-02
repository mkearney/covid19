
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
    #> 1 2020-10-01     56  7244316 93715700   13003            30742           410409
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
    #> # A tibble: 254 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-10-01     56  7244316 93715700   13003            30742           410409
    #>  2 2020-09-30     56  7198622 92955835    9431            30877           408649
    #>  3 2020-09-29     56  7154198 92281568    7695            30391           407059
    #>  4 2020-09-28     56  7117251 91574039   11112            29608           405326
    #>  5 2020-09-27     56  7080727 90655018   11136            29434           404085
    #>  6 2020-09-26     56  7045273 89985494   11183            29554           403325
    #>  7 2020-09-25     56  6997437 89096343   10905            29769           402171
    #>  8 2020-09-24     56  6941911 88218448   12008            30043           400840
    #>  9 2020-09-23     56  6898139 87416375   10535            29905           399252
    #> 10 2020-09-22     56  6859572 86615497    7999            29459           397801
    #> # … with 244 more rows, and 18 more variables: in_icu_currently <int>,
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
    #> [1] 20201001
    #> 
    #> $state
    #> [1] "ND"
    #> 
    #> $positive
    #> [1] 22218
    #> 
    #> $negative
    #> [1] 220682
    #> 
    #> $pending
    #> NULL
    #> 
    #> $totalTestResults
    #> [1] 619331
    #> 
    #> $hospitalizedCurrently
    #> [1] 106
    #> 
    #> $hospitalizedCumulative
    #> [1] 884
    #> 
    #> $inIcuCurrently
    #> [1] 22
    #> 
    #> $inIcuCumulative
    #> [1] 214
    #> 
    #> $onVentilatorCurrently
    #> NULL
    #> 
    #> $onVentilatorCumulative
    #> NULL
    #> 
    #> $recovered
    #> [1] 18272
    #> 
    #> $dataQualityGrade
    #> [1] "B"
    #> 
    #> $lastUpdateEt
    #> [1] "10/1/2020 01:59"
    #> 
    #> $dateModified
    #> [1] "2020-10-01T01:59:00Z"
    #> 
    #> $checkTimeEt
    #> [1] "09/30 21:59"
    #> 
    #> $death
    #> [1] 191
    #> 
    #> $hospitalized
    #> [1] 884
    #> 
    #> $dateChecked
    #> [1] "2020-10-01T01:59:00Z"
    #> 
    #> $totalTestsViral
    #> [1] 642453
    #> 
    #> $positiveTestsViral
    #> NULL
    #> 
    #> $negativeTestsViral
    #> NULL
    #> 
    #> $positiveCasesViral
    #> [1] 22218
    #> 
    #> $deathConfirmed
    #> [1] 188
    #> 
    #> $deathProbable
    #> [1] 3
    #> 
    #> $totalTestEncountersViral
    #> [1] 619331
    #> 
    #> $totalTestsPeopleViral
    #> [1] 242900
    #> 
    #> $totalTestsAntibody
    #> [1] 9578
    #> 
    #> $positiveTestsAntibody
    #> [1] 427
    #> 
    #> $negativeTestsAntibody
    #> [1] 9151
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
    #> [1] "38"
    #> 
    #> $positiveIncrease
    #> [1] 372
    #> 
    #> $negativeIncrease
    #> [1] 1036
    #> 
    #> $total
    #> [1] 242900
    #> 
    #> $totalTestResultsSource
    #> [1] "totalTestEncountersViral"
    #> 
    #> $totalTestResultsIncrease
    #> [1] 5844
    #> 
    #> $posNeg
    #> [1] 242900
    #> 
    #> $deathIncrease
    #> [1] 0
    #> 
    #> $hospitalizedIncrease
    #> [1] 25
    #> 
    #> $hash
    #> [1] "913151e59f48a56bda510a0608073e28288d822c"
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
    #> # A tibble: 11,858 x 54
    #>    date       state positive negative pending total_test_resu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-10-01 AK        8912   453411      NA           462323               42
    #>  2 2020-10-01 AL      155744  1000570      NA          1138732              760
    #>  3 2020-10-01 AR       84821   961085      NA          1042616              479
    #>  4 2020-10-01 AS           0     1571      NA             1571               NA
    #>  5 2020-10-01 AZ      219212  1256760      NA          1471368              620
    #>  6 2020-10-01 CA      813687 13958164      NA         14771851             3205
    #>  7 2020-10-01 CO       70536   845848      NA          1357159              264
    #>  8 2020-10-01 CT       57742  1546638      NA          1604380              107
    #>  9 2020-10-01 DC       15358   374822      NA           390180               98
    #> 10 2020-10-01 DE       20787   267430      NA           288217               78
    #> # … with 11,848 more rows, and 47 more variables:
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
