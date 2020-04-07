
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
    #> # A tibble: 1 x 18
    #>   positive negative pending hospitalized_cu… hospitalized_cu… in_icu_currently
    #>      <int>    <int>   <int>            <int>            <int>            <int>
    #> 1   364058  1586986   16470            28245            45696             6711
    #> # … with 12 more variables: in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, hash <chr>, last_modified <dttm>, death <int>,
    #> #   hospitalized <int>, total <int>, total_test_results <int>, pos_neg <int>,
    #> #   notes <chr>
    ```

  - **`covid19_us_daily()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`, `states`)
    by day
    
    ``` r
    covid19_us_daily()
    #> # A tibble: 34 x 24
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-04-06     56   361331  1555764   17292            27675            45168
    #>  2 2020-04-05     56   332308  1429724   17307            23061            41372
    #>  3 2020-04-04     56   305755  1318052   15573            22158            38402
    #>  4 2020-04-03     56   271988  1124874   61980            19926            35991
    #>  5 2020-04-02     56   239099  1028649   62101            17157            32649
    #>  6 2020-04-01     56   210816   939190   59669            16223            31142
    #>  7 2020-03-31     56   184683   864201   59518            14236            26660
    #>  8 2020-03-30     56   160530   784324   65369            12147            22303
    #>  9 2020-03-29     56   139061   692290   65545             9922            19401
    #> 10 2020-03-28     56   118234   617470   65709             8725            16363
    #> # … with 24 more rows, and 17 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, hash <chr>,
    #> #   date_checked <dttm>, death <int>, hospitalized <int>, total <int>,
    #> #   total_test_results <int>, pos_neg <int>, death_increase <int>,
    #> #   hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> # A tibble: 56 x 29
    #>    state positive positive_score negative_score negative_regula…
    #>    <chr>    <int>          <int>          <int>            <int>
    #>  1 AK         191              1              1                1
    #>  2 AL        2008              1              1                0
    #>  3 AR         927              1              1                1
    #>  4 AZ        2456              1              1                0
    #>  5 CA       14336              1              1                0
    #>  6 CO        5172              1              1                1
    #>  7 CT        6906              1              1                1
    #>  8 DC        1097              1              1                1
    #>  9 DE         783              1              1                1
    #> 10 FL       13629              1              1                1
    #> # … with 46 more rows, and 24 more variables: commercial_score <int>,
    #> #   grade <chr>, score <int>, negative <int>, pending <int>,
    #> #   hospitalized_currently <int>, hospitalized_cumulative <int>,
    #> #   in_icu_currently <int>, in_icu_cumulative <int>,
    #> #   on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, last_update_et <chr>, check_time_et <chr>, death <int>,
    #> #   hospitalized <int>, total <int>, total_test_results <int>, pos_neg <int>,
    #> #   fips <chr>, date_modified <dttm>, date_checked <dttm>, notes <chr>,
    #> #   hash <chr>
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 1,765 x 25
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-04-06 AK         191     6692      NA               NA               23
    #>  2 2020-04-06 AL        1968    12797      NA               NA              240
    #>  3 2020-04-06 AR         875    11970      NA               74              130
    #>  4 2020-04-06 AS           0       20      11               NA               NA
    #>  5 2020-04-06 AZ        2456    30078      NA               NA              325
    #>  6 2020-04-06 CA       14336   103095   15000             2509               NA
    #>  7 2020-04-06 CO        4950    20823      NA               NA              924
    #>  8 2020-04-06 CT        6906    19780      NA             1221               NA
    #>  9 2020-04-06 DC        1097     6356      NA               NA               NA
    #> 10 2020-04-06 DE         673     6321      NA              101               NA
    #> # … with 1,755 more rows, and 18 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, hash <chr>,
    #> #   date_checked <dttm>, death <int>, hospitalized <int>, total <int>,
    #> #   total_test_results <int>, pos_neg <int>, fips <chr>, death_increase <int>,
    #> #   hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>
    ```

  - **`covid19_states_info()`**: State government links, Twitter
    accounts, notes, etc.
    
    ``` r
    covid19_states_info()
    #> # A tibble: 56 x 10
    #>    state covid19site_old covid19site covid19site_sec… twitter pui   pum   notes
    #>    <chr> <chr>           <chr>       <chr>            <chr>   <chr> <lgl> <chr>
    #>  1 AK    http://dhss.al… http://dhs… http://dhss.ala… @Alask… All … FALSE "Tot…
    #>  2 AL    http://www.ala… https://al… <NA>             @alpub… No d… FALSE "Neg…
    #>  3 AR    https://www.he… https://ww… https://adem.ma… @adhpio All … TRUE  "Dat…
    #>  4 AS    http://www.sam… https://ww… https://www.fac… https:… No D… FALSE "Ame…
    #>  5 AZ    https://www.az… https://ww… <NA>             @azdhs  All … FALSE "Das…
    #>  6 CA    https://www.cd… https://ww… https://www.cdp… @CAPub… Only… FALSE "The…
    #>  7 CO    https://www.co… https://co… <NA>             @cdphe  Posi… FALSE "Neg…
    #>  8 CT    https://portal… https://po… <NA>             @ctdph  All … FALSE "Dat…
    #>  9 DC    https://corona… https://co… <NA>             @_DCHe… All … FALSE "Pos…
    #> 10 DE    https://dhss.d… https://dh… <NA>             @Delaw… All … TRUE   <NA>
    #> # … with 46 more rows, and 2 more variables: fips <chr>, name <chr>
    ```

![](man/figures/README-state-trajectories.png)
![](man/figures/README-state-cases.png)

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
    #>  4 url   Arizona "https://phantomjs… "ocr,clean-new-line… AZ       NA           
    #>  5 url   Califo… "https://www.cdph.… "css:table:contains… CA       NA           
    #>  6 url   Colora… "https://covid19.c… "css:p:contains(\"C… CO       NA           
    #>  7 url   Connec… "https://portal.ct… "css:.content a[hre… CT       NA           
    #>  8 url   Washin… "https://coronavir… "css:ul:contains(\"… DC       NA           
    #>  9 url   Delawa… "https://services1… "css:.ftrTable,html… DE       NA           
    #> 10 url   Florida "https://floridahe… "css:table,html2tex… FL       NA           
    #> # … with 46 more rows
    ```

  - **`covid19_press()`**: Information (`title`, `url`, `publication`,
    `author`, etc.) about publications
    
    ``` r
    covid19_press()
    #> # A tibble: 63 x 15
    #>    title url   add_to_covid_tr… feature_on_covi… about_covid_tra…
    #>    <chr> <chr> <lgl>            <lgl>            <lgl>           
    #>  1 Why … http… NA               NA               FALSE           
    #>  2 The … http… NA               NA               TRUE            
    #>  3 In h… http… FALSE            FALSE            NA              
    #>  4 The … http… NA               NA               FALSE           
    #>  5 The … http… FALSE            FALSE            NA              
    #>  6 Wher… http… TRUE             FALSE            FALSE           
    #>  7 Expe… http… TRUE             FALSE            FALSE           
    #>  8 NM C… http… FALSE            FALSE            NA              
    #>  9 Coro… http… TRUE             TRUE             TRUE            
    #> 10 Bay … http… TRUE             FALSE            FALSE           
    #> # … with 53 more rows, and 10 more variables: publish_date <dttm>,
    #> #   continually_updated <lgl>, publication <chr>, author <chr>,
    #> #   does_this_source_have_a_data_visualization <lgl>, data_source <chr>,
    #> #   uses_covid_tracking_data <chr>, link_to_viz_image <chr>,
    #> #   twitter_copy <lgl>, language <chr>
    ```

  - **`covid19_screenshots()`**: Information and paths to screenshots of
    original data sources
    
    ``` r
    covid19_screenshots()
    #> # A tibble: 4,545 x 6
    #>    state url                         date_checked        secondary date     size
    #>    <chr> <chr>                       <dttm>              <lgl>     <chr>   <int>
    #>  1 AK    https://covidtracking.com/… 2020-03-15 06:13:15 FALSE     20200… 563460
    #>  2 AK    https://covidtracking.com/… 2020-03-15 20:32:25 FALSE     20200… 432003
    #>  3 AK    https://covidtracking.com/… 2020-03-16 14:53:36 FALSE     20200… 563460
    #>  4 AK    https://covidtracking.com/… 2020-03-17 03:06:10 FALSE     20200… 563522
    #>  5 AK    https://covidtracking.com/… 2020-03-17 18:09:31 FALSE     20200… 567852
    #>  6 AK    https://covidtracking.com/… 2020-03-17 22:00:17 FALSE     20200… 565619
    #>  7 AK    https://covidtracking.com/… 2020-03-18 05:00:17 FALSE     20200… 568859
    #>  8 AK    https://covidtracking.com/… 2020-03-18 18:01:15 FALSE     20200… 569429
    #>  9 AK    https://covidtracking.com/… 2020-03-18 23:00:43 FALSE     20200… 517287
    #> 10 AK    https://covidtracking.com/… 2020-03-19 05:00:25 FALSE     20200… 524988
    #> # … with 4,535 more rows
    ```
