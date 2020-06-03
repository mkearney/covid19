
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
    #> 1 2020-06-02     56  1823269 15934569    4054            32728           214382
    #> # … with 18 more variables: in_icu_currently <int>, in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, date_checked <dttm>, death <int>, hospitalized <int>,
    #> #   last_modified <dttm>, total <int>, total_test_results <int>, pos_neg <int>,
    #> #   death_increase <int>, hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>, hash <chr>
    ```

  - **`covid19_us_daily()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`, `states`)
    by day
    
    ``` r
    covid19_us_daily()
    #> # A tibble: 133 x 25
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-02     56  1823269 15934569    4054            32728           214382
    #>  2 2020-06-01     56  1799761 15540921    3455            33237           212704
    #>  3 2020-05-31     56  1783570 15153321    3270            33840           210083
    #>  4 2020-05-30     56  1761025 14769660    1668            34650           209134
    #>  5 2020-05-29     56  1736571 14362944    2978            35871           207694
    #>  6 2020-05-28     56  1712637 13894602    1906            36967           205974
    #>  7 2020-05-27     56  1690157 13508987    3132            37251           203578
    #>  8 2020-05-26     56  1671035 13236006    1549            36609           201872
    #>  9 2020-05-25     56  1654829 12950113    3368            36668           184570
    #> 10 2020-05-24     56  1635760 12527934    3860            36706           183603
    #> # … with 123 more rows, and 18 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, date_checked <dttm>,
    #> #   death <int>, hospitalized <int>, last_modified <dttm>, total <int>,
    #> #   total_test_results <int>, pos_neg <int>, death_increase <int>,
    #> #   hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>, hash <chr>
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> # A tibble: 56 x 35
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-02 AK         487    55716      NA               10               NA
    #>  2 2020-06-02 AL       18642   205160      NA               NA             1879
    #>  3 2020-06-02 AR        7443   125793      NA              121              718
    #>  4 2020-06-02 AS           0      174      NA               NA               NA
    #>  5 2020-06-02 AZ       21250   216583      NA             1009             3057
    #>  6 2020-06-02 CA      115310  1956281      NA             4393               NA
    #>  7 2020-06-02 CO       26577   163960      NA              394             4372
    #>  8 2020-06-02 CT       42979   227631      NA              434            13793
    #>  9 2020-06-02 DC        8886    38815      NA              295               NA
    #> 10 2020-06-02 DE        9685    54377      NA              157               NA
    #> # … with 46 more rows, and 28 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, data_quality_grade <chr>,
    #> #   last_update_et <chr>, date_modified <dttm>, check_time_et <chr>,
    #> #   death <int>, hospitalized <int>, date_checked <dttm>, fips <chr>,
    #> #   positive_increase <int>, negative_increase <int>, total <int>,
    #> #   total_test_results <int>, total_test_results_increase <int>, pos_neg <int>,
    #> #   death_increase <int>, hospitalized_increase <int>, hash <chr>,
    #> #   commercial_score <int>, negative_regular_score <int>, negative_score <int>,
    #> #   positive_score <int>, score <int>, grade <chr>
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 5,001 x 35
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-06-02 AK         487    55716      NA               10               NA
    #>  2 2020-06-02 AL       18642   205160      NA               NA             1879
    #>  3 2020-06-02 AR        7443   125793      NA              121              718
    #>  4 2020-06-02 AS           0      174      NA               NA               NA
    #>  5 2020-06-02 AZ       21250   216583      NA             1009             3057
    #>  6 2020-06-02 CA      115310  1956281      NA             4393               NA
    #>  7 2020-06-02 CO       26577   163960      NA              394             4372
    #>  8 2020-06-02 CT       42979   227631      NA              434            13793
    #>  9 2020-06-02 DC        8886    38815      NA              295               NA
    #> 10 2020-06-02 DE        9685    54377      NA              157               NA
    #> # … with 4,991 more rows, and 28 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, data_quality_grade <chr>,
    #> #   last_update_et <chr>, date_modified <chr>, check_time_et <chr>,
    #> #   death <int>, hospitalized <int>, date_checked <chr>, fips <chr>,
    #> #   positive_increase <int>, negative_increase <int>, total <int>,
    #> #   total_test_results <int>, total_test_results_increase <int>, pos_neg <int>,
    #> #   death_increase <int>, hospitalized_increase <int>, hash <chr>,
    #> #   commercial_score <int>, negative_regular_score <int>, negative_score <int>,
    #> #   positive_score <int>, score <int>, grade <chr>
    ```

  - **`covid19_states_info()`**: State government links, Twitter
    accounts, notes, etc.
    
    ``` r
    covid19_states_info()
    #> # A tibble: 56 x 10
    #>    state notes covid19site covid19site_sec… twitter covid19site_old name  fips 
    #>    <chr> <chr> <chr>       <chr>            <chr>   <chr>           <chr> <chr>
    #>  1 AK    "Tot… http://dhs… "http://dhss.al… "@Alas… http://dhss.al… Alas… 02   
    #>  2 AL    "Neg… https://al… "https://dph1.a… "@alpu… http://www.ala… Alab… 01   
    #>  3 AR     <NA> https://ww… "https://adem.m… "@adhp… https://www.he… Arka… 05   
    #>  4 AS    "Our… https://ww… "https://www.fa… ""      http://www.sam… Amer… 60   
    #>  5 AZ    "Das… https://ww… "https://www.az… "@azdh… https://www.az… Ariz… 04   
    #>  6 CA    "Cal… https://ww… "https://www.cd… "@CAPu… https://www.cd… Cali… 06   
    #>  7 CO    "Neg… https://co… "https://covid1… "@cdph… https://www.co… Colo… 08   
    #>  8 CT    "Neg… https://da… ""               "@ctdp… https://portal… Conn… 09   
    #>  9 DC    "Pos… https://co… ""               "@_DCH… https://corona… Dist… 11   
    #> 10 DE    "As … https://dh… ""               "@Dela… https://dhss.d… Dela… 10   
    #> # … with 46 more rows, and 2 more variables: pui <chr>, pum <lgl>
    ```

![](man/figures/README-state-trajectories.png)

### Counties

  - **`covid19_counties()`**: County-level links for government sites,
    Twitter accounts, etc.
    
    ``` r
    covid19_counties()
    #> # A tibble: 11 x 7
    #>    state county   covid19site               data_site main_site   twitter pui   
    #>    <chr> <chr>    <chr>                     <lgl>     <chr>       <lgl>   <chr> 
    #>  1 CA    Los Ang… http://publichealth.laco… NA        <NA>        NA      No da…
    #>  2 NY    Westche… https://health.westchest… NA        <NA>        NA      No da…
    #>  3 WA    King     https://www.kingcounty.g… NA        <NA>        NA      No da…
    #>  4 WA    Snohomi… https://www.snohd.org/48… NA        <NA>        NA      All d…
    #>  5 WA    Grant    http://granthealth.org/2… NA        <NA>        NA      No da…
    #>  6 WA    Jeffers… https://www.jeffersoncou… NA        <NA>        NA      All d…
    #>  7 WA    Pierce   https://www.tpchd.org/he… NA        <NA>        NA      Only …
    #>  8 WA    Clark    https://www.clark.wa.gov… NA        <NA>        NA      All d…
    #>  9 WA    Kittitas https://www.co.kittitas.… NA        <NA>        NA      No da…
    #> 10 CA    Contra … https://www.coronavirus.… NA        https://cc… NA      <NA>  
    #> 11 CA    Alameda… http://www.acphd.org/201… NA        http://www… NA      <NA>
    ```

### Other

  - **`covid19_urls()`**: Links to official state government sites
    
    ``` r
    covid19_urls()
    #> # A tibble: 56 x 6
    #>    kind  name    url                 filter               state_id ssl_no_verify
    #>    <chr> <chr>   <chr>               <chr>                <chr>    <lgl>        
    #>  1 url   Alaska  "https://services1… "css:.ftrTable,html… AK       NA           
    #>  2 url   Alabama "https://services7… "css:.ftrTable,html… AL       NA           
    #>  3 url   Arkans… "https://www.healt… "css:#contentBody t… AR       NA           
    #>  4 url   Arizona "https://tableau.a… "ocr,clean-new-line… AZ       NA           
    #>  5 url   Califo… "https://www.cdph.… "css:table:contains… CA       NA           
    #>  6 url   Colora… "https://covid19.c… "css:article .parag… CO       NA           
    #>  7 url   Connec… "https://data.ct.g… "strip"              CT       NA           
    #>  8 url   Washin… "https://coronavir… "css:ul:contains(\"… DC       NA           
    #>  9 url   Delawa… "https://myhealthy… "css:div.c-dashboar… DE       NA           
    #> 10 url   Florida "https://services1… "css:.ftrTable,html… FL       NA           
    #> # … with 46 more rows
    ```

  - **`covid19_press()`**: Information (`title`, `url`, `publication`,
    `author`, etc.) about publications
    
    ``` r
    covid19_press()
    #> # A tibble: 142 x 15
    #>    title url   add_to_covid_tr… feature_on_covi… about_covid_tra…
    #>    <chr> <chr> <lgl>            <lgl>            <lgl>           
    #>  1 Geor… http… TRUE             TRUE             FALSE           
    #>  2 A St… http… TRUE             TRUE             FALSE           
    #>  3 16 S… http… TRUE             TRUE             FALSE           
    #>  4 Whit… http… TRUE             TRUE             TRUE            
    #>  5 Coro… http… TRUE             NA               FALSE           
    #>  6 Amid… http… TRUE             TRUE             NA              
    #>  7 Inst… http… TRUE             TRUE             FALSE           
    #>  8 Coro… http… TRUE             TRUE             FALSE           
    #>  9 Kans… http… TRUE             NA               FALSE           
    #> 10 Dunl… http… TRUE             NA               FALSE           
    #> # … with 132 more rows, and 10 more variables: publish_date <dttm>,
    #> #   continually_updated <lgl>, publication <chr>, author <chr>,
    #> #   does_this_source_have_a_data_visualization <lgl>, data_source <chr>,
    #> #   uses_covid_tracking_data <chr>, link_to_viz_image <chr>,
    #> #   twitter_copy <lgl>, language <chr>
    ```

  - **`covid19_screenshots()`**: Information and paths to screenshots of
    original data sources
    
    ``` r
    covid19_screenshots()
    #> # A tibble: 21,088 x 6
    #>    state url                         secondary date_checked        date     size
    #>    <chr> <chr>                       <lgl>     <dttm>              <chr>   <int>
    #>  1 AK    https://covidtracking.com/… FALSE     2020-03-15 06:13:15 20200… 563460
    #>  2 AK    https://covidtracking.com/… FALSE     2020-03-15 20:32:25 20200… 432003
    #>  3 AK    https://covidtracking.com/… FALSE     2020-03-16 14:53:36 20200… 563460
    #>  4 AK    https://covidtracking.com/… FALSE     2020-03-17 03:06:10 20200… 563522
    #>  5 AK    https://covidtracking.com/… FALSE     2020-03-17 18:09:31 20200… 567852
    #>  6 AK    https://covidtracking.com/… FALSE     2020-03-17 22:00:17 20200… 565619
    #>  7 AK    https://covidtracking.com/… FALSE     2020-03-18 05:00:17 20200… 568859
    #>  8 AK    https://covidtracking.com/… FALSE     2020-03-18 18:01:15 20200… 569429
    #>  9 AK    https://covidtracking.com/… FALSE     2020-03-18 23:00:43 20200… 517287
    #> 10 AK    https://covidtracking.com/… FALSE     2020-03-19 05:00:25 20200… 524988
    #> # … with 21,078 more rows
    ```
