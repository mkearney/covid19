
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
    #> 1   239009  1028649   62119            17176            32630             4264
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
    #> # A tibble: 30 x 24
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-04-02     56   239009  1028649   62119            17176            32630
    #>  2 2020-04-01     56   210770   939190   59687            16223            31142
    #>  3 2020-03-31     56   184770   864201   59529            14236            26660
    #>  4 2020-03-30     56   160530   784324   65382            12147            22303
    #>  5 2020-03-29     56   139061   692290   65549             9922            19730
    #>  6 2020-03-28     56   118234   617470   65712             8725            16729
    #>  7 2020-03-27     56    99413   527220   60094             7532            13718
    #>  8 2020-03-26     56    80735   438603   60251             5441            10131
    #>  9 2020-03-25     56    63928   357604   51235               96             6136
    #> 10 2020-03-24     56    51954   292758   14433               NA             4468
    #> # … with 20 more rows, and 17 more variables: in_icu_currently <int>,
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
    #>  1 AK         143              1              1                1
    #>  2 AL        1233              1              1                0
    #>  3 AR         643              1              1                1
    #>  4 AZ        1598              1              1                0
    #>  5 CA        9191              1              1                1
    #>  6 CO        3342              1              1                1
    #>  7 CT        3824              1              1                1
    #>  8 DC         653              1              1                1
    #>  9 DE         393              1              1                1
    #> 10 FL        8010              1              1                1
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
    #> # A tibble: 1,541 x 25
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-04-02 AK         143     4879      NA               NA                9
    #>  2 2020-04-02 AL        1233     7503      NA               NA               NA
    #>  3 2020-04-02 AR         643     7880      NA               66               NA
    #>  4 2020-04-02 AS           0       20       6               NA               NA
    #>  5 2020-04-02 AZ        1598    21111      NA               NA              228
    #>  6 2020-04-02 CA        9191    23809   59500             1922               NA
    #>  7 2020-04-02 CO        3342    15303      NA               NA              620
    #>  8 2020-04-02 CT        3824    14476      NA              827               NA
    #>  9 2020-04-02 DC         653     4417      NA               NA               NA
    #> 10 2020-04-02 DE         393     4566      NA               56               NA
    #> # … with 1,531 more rows, and 18 more variables: in_icu_currently <int>,
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
    #>  6 CA    https://www.cd… https://ww… https://www.cdp… @CAPub… Only… FALSE "Cal…
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
    #>    kind  name    url                 state_id filter               ssl_no_verify
    #>    <chr> <chr>   <chr>               <chr>    <chr>                <lgl>        
    #>  1 url   Alaska  "http://dhss.alask… AK        <NA>                NA           
    #>  2 url   Alabama "https://services7… AL       "css:.ftrTable,html… NA           
    #>  3 url   Arkans… "https://www.healt… AR       "css:#contentBody t… NA           
    #>  4 url   Arizona "https://phantomjs… AZ       "ocr,clean-new-line… NA           
    #>  5 url   Califo… "https://www.cdph.… CA       "css:table:contains… NA           
    #>  6 url   Colora… "https://covid19.c… CO       "css:p:contains(\"C… NA           
    #>  7 url   Connec… "https://portal.ct… CT       "css:.content a[hre… NA           
    #>  8 url   Washin… "https://coronavir… DC       "css:ul:contains(\"… NA           
    #>  9 url   Delawa… "https://services1… DE       "css:.ftrTable,html… NA           
    #> 10 url   Florida "https://floridahe… FL       "css:table,html2tex… NA           
    #> # … with 46 more rows
    ```

  - **`covid19_press()`**: Information (`title`, `url`, `publication`,
    `author`, etc.) about publications
    
    ``` r
    covid19_press()
    #> # A tibble: 60 x 15
    #>    title url   add_to_covid_tr… feature_on_covi… about_covid_tra…
    #>    <chr> <chr> <lgl>            <lgl>            <lgl>           
    #>  1 In h… http… FALSE            FALSE            NA              
    #>  2 The … http… NA               NA               FALSE           
    #>  3 The … http… FALSE            FALSE            NA              
    #>  4 Wher… http… TRUE             FALSE            FALSE           
    #>  5 Expe… http… TRUE             FALSE            FALSE           
    #>  6 NM C… http… FALSE            FALSE            NA              
    #>  7 Coro… http… TRUE             TRUE             TRUE            
    #>  8 Bay … http… TRUE             FALSE            FALSE           
    #>  9 STAY… http… FALSE            FALSE            FALSE           
    #> 10 Fact… http… TRUE             TRUE             NA              
    #> # … with 50 more rows, and 10 more variables: publish_date <dttm>,
    #> #   continually_updated <lgl>, publication <chr>, author <chr>,
    #> #   does_this_source_have_a_data_visualization <lgl>, data_source <chr>,
    #> #   uses_covid_tracking_data <chr>, link_to_viz_image <chr>,
    #> #   twitter_copy <lgl>, language <chr>
    ```

  - **`covid19_screenshots()`**: Information and paths to screenshots of
    original data sources
    
    ``` r
    covid19_screenshots()
    #> # A tibble: 3,265 x 6
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
    #> # … with 3,255 more rows
    ```
