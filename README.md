
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
    #> 1 2020-09-19     56  6735436 84526688   13217            29025           394687
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
    #> [1] 20200919
    #> 
    #> $state
    #> [1] "MO"
    #> 
    #> $positive
    #> [1] 111516
    #> 
    #> $negative
    #> [1] 1091108
    #> 
    #> $pending
    #> NULL
    #> 
    #> $totalTestResults
    #> [1] 1202624
    #> 
    #> $hospitalizedCurrently
    #> [1] 1004
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
    #> [1] "9/19/2020 00:00"
    #> 
    #> $dateModified
    #> [1] "2020-09-19T00:00:00Z"
    #> 
    #> $checkTimeEt
    #> [1] "09/18 20:00"
    #> 
    #> $death
    #> [1] 1793
    #> 
    #> $hospitalized
    #> NULL
    #> 
    #> $dateChecked
    #> [1] "2020-09-19T00:00:00Z"
    #> 
    #> $totalTestsViral
    #> [1] 1571002
    #> 
    #> $positiveTestsViral
    #> [1] 118677
    #> 
    #> $negativeTestsViral
    #> [1] 1449613
    #> 
    #> $positiveCasesViral
    #> [1] 111516
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
    #> [1] 1202624
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
    #> [1] 72342
    #> 
    #> $positiveTestsPeopleAntibody
    #> [1] 3287
    #> 
    #> $negativeTestsPeopleAntibody
    #> [1] 69055
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
    #> [1] 1387
    #> 
    #> $negativeIncrease
    #> [1] 10857
    #> 
    #> $total
    #> [1] 1202624
    #> 
    #> $totalTestResultsSource
    #> [1] "posNeg"
    #> 
    #> $totalTestResultsIncrease
    #> [1] 12244
    #> 
    #> $posNeg
    #> [1] 1202624
    #> 
    #> $deathIncrease
    #> [1] 13
    #> 
    #> $hospitalizedIncrease
    #> [1] 0
    #> 
    #> $hash
    #> [1] "3b751b0d6def2c03f81997a760b4a1d70554e2b0"
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
    #> # A tibble: 11,186 x 54
    #>    date       state positive negative pending total_test_resu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-19 AK        7674   415176      NA           422850               41
    #>  2 2020-09-19 AL      144164   918448      NA          1048422              747
    #>  3 2020-09-19 AR       74082   794097      NA           866435              372
    #>  4 2020-09-19 AS           0     1571      NA             1571               NA
    #>  5 2020-09-19 AZ      213551  1159608      NA          1373159              528
    #>  6 2020-09-19 CA      774135 12569751      NA         13343886             3510
    #>  7 2020-09-19 CO       63750   754119      NA          1181829              230
    #>  8 2020-09-19 CT       55527  1366621      NA          1422148               77
    #>  9 2020-09-19 DC       14902   335975      NA           350877               85
    #> 10 2020-09-19 DE       19449   250262      NA           269711               53
    #> # … with 11,176 more rows, and 47 more variables:
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
