
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
    #> 1 2020-09-18     56  6688827 83566093   11805            29492           393596
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
    #> # A tibble: 241 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-18     56  6688827 83566093   11805            29492           393596
    #>  2 2020-09-17     56  6641341 82709952   11768            29900           392173
    #>  3 2020-09-16     56  6597783 81976741   10587            30278           390624
    #>  4 2020-09-15     56  6557762 81351140    4966            30327           389107
    #>  5 2020-09-14     56  6522317 80701552   10494            29867           387616
    #>  6 2020-09-13     56  6488453 80329804   10467            29816           386679
    #>  7 2020-09-12     56  6454000 79717367   10403            30662           386087
    #>  8 2020-09-11     56  6411913 78910645   10813            31421           385011
    #>  9 2020-09-10     56  6366986 78189575   10530            32419           383458
    #> 10 2020-09-09     56  6329405 77613114    6551            32562           381926
    #> # … with 231 more rows, and 18 more variables: in_icu_currently <int>,
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
    #> [1] 20200918
    #> 
    #> $state
    #> [1] "VA"
    #> 
    #> $positive
    #> [1] 138702
    #> 
    #> $negative
    #> [1] 1699533
    #> 
    #> $pending
    #> [1] 297
    #> 
    #> $totalTestResults
    #> [1] 1831623
    #> 
    #> $hospitalizedCurrently
    #> [1] 945
    #> 
    #> $hospitalizedCumulative
    #> [1] 17737
    #> 
    #> $inIcuCurrently
    #> [1] 212
    #> 
    #> $inIcuCumulative
    #> NULL
    #> 
    #> $onVentilatorCurrently
    #> [1] 102
    #> 
    #> $onVentilatorCumulative
    #> NULL
    #> 
    #> $recovered
    #> [1] 16762
    #> 
    #> $dataQualityGrade
    #> [1] "A+"
    #> 
    #> $lastUpdateEt
    #> [1] "9/17/2020 17:00"
    #> 
    #> $dateModified
    #> [1] "2020-09-17T17:00:00Z"
    #> 
    #> $checkTimeEt
    #> [1] "09/17 13:00"
    #> 
    #> $death
    #> [1] 2949
    #> 
    #> $hospitalized
    #> [1] 17737
    #> 
    #> $dateChecked
    #> [1] "2020-09-17T17:00:00Z"
    #> 
    #> $totalTestsViral
    #> NULL
    #> 
    #> $positiveTestsViral
    #> [1] 157605
    #> 
    #> $negativeTestsViral
    #> NULL
    #> 
    #> $positiveCasesViral
    #> [1] 132090
    #> 
    #> $deathConfirmed
    #> [1] 2755
    #> 
    #> $deathProbable
    #> [1] 194
    #> 
    #> $totalTestEncountersViral
    #> [1] 1831623
    #> 
    #> $totalTestsPeopleViral
    #> NULL
    #> 
    #> $totalTestsAntibody
    #> [1] 138348
    #> 
    #> $positiveTestsAntibody
    #> [1] 11683
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
    #> [1] "51"
    #> 
    #> $positiveIncrease
    #> [1] 1242
    #> 
    #> $negativeIncrease
    #> [1] 8481
    #> 
    #> $total
    #> [1] 1838532
    #> 
    #> $totalTestResultsSource
    #> [1] "posNeg"
    #> 
    #> $totalTestResultsIncrease
    #> [1] 9611
    #> 
    #> $posNeg
    #> [1] 1838235
    #> 
    #> $deathIncrease
    #> [1] 29
    #> 
    #> $hospitalizedIncrease
    #> [1] 71
    #> 
    #> $hash
    #> [1] "b9606006107298205ce08d238da057f07e8c6399"
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
    #> # A tibble: 11,130 x 54
    #>    date       state positive negative pending total_test_resu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-09-18 AK        7587   410706      NA           418293               36
    #>  2 2020-09-18 AL      142863   910192      NA          1039010              744
    #>  3 2020-09-18 AR       74082   794097      NA           866435              372
    #>  4 2020-09-18 AS           0     1571      NA             1571               NA
    #>  5 2020-09-18 AZ      212942  1149377      NA          1362319              516
    #>  6 2020-09-18 CA      769831 12407355      NA         13177186             3570
    #>  7 2020-09-18 CO       63145   746096      NA          1166910              213
    #>  8 2020-09-18 CT       55527  1366621      NA          1422148               77
    #>  9 2020-09-18 DC       14852   332266      NA           347118               91
    #> 10 2020-09-18 DE       19366   249272      NA           268638               58
    #> # … with 11,120 more rows, and 47 more variables:
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
