
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
    #> 1 2021-03-03     56 28520365 89215137   11778            45462           873073
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
    #> # A tibble: 416 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2021-03-03     56 28520365 89215137   11778            45462           873073
    #>  2 2021-03-02     56 28453529 88895212   11196            46388           870901
    #>  3 2021-03-01     56 28399281 88600984   11748            46738           869030
    #>  4 2021-02-28     56 28351189 88424509   11708            47352           868006
    #>  5 2021-02-27     56 28296840 88196021   11731            48871           867127
    #>  6 2021-02-26     56 28225595 87929367   11945            51112           865699
    #>  7 2021-02-25     56 28150738 87578189   11813            52669           863766
    #>  8 2021-02-24     56 28075173 87229445   12548            54118           861784
    #>  9 2021-02-23     56 28001915 86917776   11200            55058           859612
    #> 10 2021-02-22     56 27932810 86649164    9499            55403           857448
    #> # … with 406 more rows, and 18 more variables: in_icu_currently <int>,
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
    #> # A tibble: 56 x 56
    #>    date       state positive probable_cases negative pending total_test_resu…
    #>    <date>     <chr>    <int>          <int>    <int>   <int> <chr>           
    #>  1 2021-03-03 AK       56605             NA       NA      NA totalTestsViral 
    #>  2 2021-03-03 AL      497154         107382  1915545      NA totalTestsPeopl…
    #>  3 2021-03-03 AR      323353          68716  2455309      NA totalTestsViral 
    #>  4 2021-03-03 AS           0             NA     2140      NA totalTestsViral 
    #>  5 2021-03-03 AZ      819954          55423  3022710      NA totalTestsViral 
    #>  6 2021-03-03 CA     3484963             NA       NA      NA totalTestsViral 
    #>  7 2021-03-03 CO      431670          23945  2183138      NA totalTestEncoun…
    #>  8 2021-03-03 CT      283622          19424       NA      NA totalTestsViral 
    #>  9 2021-03-03 DC       40818             NA       NA      NA totalTestEncoun…
    #> 10 2021-03-03 DE       87425           4648   540964      NA totalTestEncoun…
    #> # … with 46 more rows, and 49 more variables: total_test_results <int>,
    #> #   hospitalized_currently <int>, hospitalized_cumulative <int>,
    #> #   in_icu_currently <int>, in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, last_update_et <chr>, date_modified <chr>,
    #> #   check_time_et <chr>, death <int>, hospitalized <int>,
    #> #   hospitalized_discharged <int>, date_checked <chr>, total_tests_viral <int>,
    #> #   positive_tests_viral <int>, negative_tests_viral <int>,
    #> #   positive_cases_viral <int>, death_confirmed <int>, death_probable <int>,
    #> #   total_test_encounters_viral <int>, total_tests_people_viral <int>,
    #> #   total_tests_antibody <int>, positive_tests_antibody <int>,
    #> #   negative_tests_antibody <int>, total_tests_people_antibody <int>,
    #> #   positive_tests_people_antibody <int>, negative_tests_people_antibody <int>,
    #> #   total_tests_people_antigen <int>, positive_tests_people_antigen <int>,
    #> #   total_tests_antigen <int>, positive_tests_antigen <int>, fips <chr>,
    #> #   positive_increase <int>, negative_increase <int>, total <int>,
    #> #   total_test_results_increase <int>, pos_neg <int>, data_quality_grade <lgl>,
    #> #   death_increase <int>, hospitalized_increase <int>, hash <chr>,
    #> #   commercial_score <int>, negative_regular_score <int>, negative_score <int>,
    #> #   positive_score <int>, score <int>, grade <chr>
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 20,556 x 56
    #>    date       state positive probable_cases negative pending total_test_resu…
    #>    <date>     <chr>    <int>          <int>    <int>   <int> <chr>           
    #>  1 2021-03-03 AK       56605             NA       NA      NA totalTestsViral 
    #>  2 2021-03-03 AL      497154         107382  1915545      NA totalTestsPeopl…
    #>  3 2021-03-03 AR      323353          68716  2455309      NA totalTestsViral 
    #>  4 2021-03-03 AS           0             NA     2140      NA totalTestsViral 
    #>  5 2021-03-03 AZ      819954          55423  3022710      NA totalTestsViral 
    #>  6 2021-03-03 CA     3484963             NA       NA      NA totalTestsViral 
    #>  7 2021-03-03 CO      431670          23945  2183138      NA totalTestEncoun…
    #>  8 2021-03-03 CT      283622          19424       NA      NA totalTestsViral 
    #>  9 2021-03-03 DC       40818             NA       NA      NA totalTestEncoun…
    #> 10 2021-03-03 DE       87425           4648   540964      NA totalTestEncoun…
    #> # … with 20,546 more rows, and 49 more variables: total_test_results <int>,
    #> #   hospitalized_currently <int>, hospitalized_cumulative <int>,
    #> #   in_icu_currently <int>, in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, last_update_et <chr>, date_modified <chr>,
    #> #   check_time_et <chr>, death <int>, hospitalized <int>,
    #> #   hospitalized_discharged <int>, date_checked <chr>, total_tests_viral <int>,
    #> #   positive_tests_viral <int>, negative_tests_viral <int>,
    #> #   positive_cases_viral <int>, death_confirmed <int>, death_probable <int>,
    #> #   total_test_encounters_viral <int>, total_tests_people_viral <int>,
    #> #   total_tests_antibody <int>, positive_tests_antibody <int>,
    #> #   negative_tests_antibody <int>, total_tests_people_antibody <int>,
    #> #   positive_tests_people_antibody <int>, negative_tests_people_antibody <int>,
    #> #   total_tests_people_antigen <int>, positive_tests_people_antigen <int>,
    #> #   total_tests_antigen <int>, positive_tests_antigen <int>, fips <chr>,
    #> #   positive_increase <int>, negative_increase <int>, total <int>,
    #> #   total_test_results_increase <int>, pos_neg <int>, data_quality_grade <lgl>,
    #> #   death_increase <int>, hospitalized_increase <int>, hash <chr>,
    #> #   commercial_score <int>, negative_regular_score <int>, negative_score <int>,
    #> #   positive_score <int>, score <int>, grade <chr>
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
    #> 10 DE    "On … https://my… https://myhealt… <NA>             <NA>            
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
