
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
    #> 1   395784  1684159   16621            39014            46292             9652
    #> # … with 12 more variables: in_icu_cumulative <int>, on_ventilator_currently <int>,
    #> #   on_ventilator_cumulative <int>, recovered <int>, hash <chr>, last_modified <dttm>,
    #> #   death <int>, hospitalized <int>, total <int>, total_test_results <int>, pos_neg <int>,
    #> #   notes <chr>
    ```

  - **`covid19_us_daily()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`, `states`)
    by day
    
    ``` r
    covid19_us_daily()
    #> # A tibble: 35 x 24
    #>    date       states positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>      <int>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-04-07     56   392594  1661868   16557            39011            45580
    #>  2 2020-04-06     56   361331  1547026   17292            27847            44850
    #>  3 2020-04-05     56   332308  1429724   17307            23061            41062
    #>  4 2020-04-04     56   305755  1318592   15573            22158            38211
    #>  5 2020-04-03     56   271988  1124874   61980            20418            34140
    #>  6 2020-04-02     56   239099  1028649   62101            18796            30882
    #>  7 2020-04-01     56   210816   939190   59669            17721            26817
    #>  8 2020-03-31     56   184683   864201   59518            15591            22874
    #>  9 2020-03-30     56   160530   784324   65369            13377            18984
    #> 10 2020-03-29     56   139061   692290   65545            11486            16677
    #> # … with 25 more rows, and 17 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, hash <chr>, date_checked <dttm>, death <int>, hospitalized <int>,
    #> #   total <int>, total_test_results <int>, pos_neg <int>, death_increase <int>,
    #> #   hospitalized_increase <int>, negative_increase <int>, positive_increase <int>,
    #> #   total_test_results_increase <int>
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> # A tibble: 56 x 29
    #>    state positive positive_score negative_score negative_regula… commercial_score grade score
    #>    <chr>    <int>          <int>          <int>            <int>            <int> <chr> <int>
    #>  1 AK         213              1              1                1                1 A         4
    #>  2 AL        2229              1              1                0                1 B         3
    #>  3 AR         946              1              1                1                1 A         4
    #>  4 AZ        2575              1              1                0                1 B         3
    #>  5 CA       15865              1              1                0                1 B         3
    #>  6 CO        5429              1              1                1                1 A         4
    #>  7 CT        7781              1              1                1                1 A         4
    #>  8 DC        1440              1              1                1                1 A         4
    #>  9 DE         928              1              1                1                1 A         4
    #> 10 FL       14747              1              1                1                1 A         4
    #> # … with 46 more rows, and 21 more variables: negative <int>, pending <int>,
    #> #   hospitalized_currently <int>, hospitalized_cumulative <int>, in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, last_update_et <chr>, check_time_et <chr>, death <int>,
    #> #   hospitalized <int>, total <int>, total_test_results <int>, pos_neg <int>, fips <chr>,
    #> #   date_modified <dttm>, date_checked <dttm>, notes <chr>, hash <chr>
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 1,821 x 25
    #>    date       state positive negative pending hospitalized_cu… hospitalized_cu…
    #>    <date>     <chr>    <int>    <int>   <int>            <int>            <int>
    #>  1 2020-04-07 AK         213     6700      NA               NA               23
    #>  2 2020-04-07 AL        2119    12797      NA               NA              271
    #>  3 2020-04-07 AR         946    12692      NA               74              148
    #>  4 2020-04-07 AS           0       20      11               NA               NA
    #>  5 2020-04-07 AZ        2575    30800      NA               NA               NA
    #>  6 2020-04-07 CA       15865   115364   14100             2611               NA
    #>  7 2020-04-07 CO        5172    21703      NA               NA              994
    #>  8 2020-04-07 CT        7781    21255      NA             1308               NA
    #>  9 2020-04-07 DC        1211     6612      NA               NA               NA
    #> 10 2020-04-07 DE         928     7628      NA              147               NA
    #> # … with 1,811 more rows, and 18 more variables: in_icu_currently <int>,
    #> #   in_icu_cumulative <int>, on_ventilator_currently <int>, on_ventilator_cumulative <int>,
    #> #   recovered <int>, hash <chr>, date_checked <dttm>, death <int>, hospitalized <int>,
    #> #   total <int>, total_test_results <int>, pos_neg <int>, fips <chr>, death_increase <int>,
    #> #   hospitalized_increase <int>, negative_increase <int>, positive_increase <int>,
    #> #   total_test_results_increase <int>
    ```

  - **`covid19_states_info()`**: State government links, Twitter
    accounts, notes, etc.
    
    ``` r
    covid19_states_info()
    #> # A tibble: 56 x 10
    #>    state covid19site_old  covid19site  covid19site_sec… twitter pui   pum   notes fips  name 
    #>    <chr> <chr>            <chr>        <chr>            <chr>   <chr> <lgl> <chr> <chr> <chr>
    #>  1 AK    http://dhss.ala… http://dhss… http://dhss.ala… @Alask… All … FALSE "Tot… 02    Alas…
    #>  2 AL    http://www.alab… https://alp… <NA>             @alpub… No d… FALSE "Neg… 01    Alab…
    #>  3 AR    https://www.hea… https://www… https://adem.ma… @adhpio All … TRUE  "Dat… 05    Arka…
    #>  4 AS    http://www.samo… https://www… https://www.fac… https:… No D… FALSE "Ame… 60    Amer…
    #>  5 AZ    https://www.azd… https://www… <NA>             @azdhs  All … FALSE "Das… 04    Ariz…
    #>  6 CA    https://www.cdp… https://www… https://www.cdp… @CAPub… Only… FALSE "The… 06    Cali…
    #>  7 CO    https://www.col… https://cov… <NA>             @cdphe  Posi… FALSE "Neg… 08    Colo…
    #>  8 CT    https://portal.… https://por… <NA>             @ctdph  All … FALSE "Dat… 09    Conn…
    #>  9 DC    https://coronav… https://cor… <NA>             @_DCHe… All … FALSE "Pos… 11    Dist…
    #> 10 DE    https://dhss.de… https://dhs… <NA>             @Delaw… All … TRUE   <NA> 10    Dela…
    #> # … with 46 more rows
    ```

![](man/figures/README-state-trajectories.png)

### Counties

  - **`covid19_counties()`**: County-level links for government sites,
    Twitter accounts, etc.
    
    ``` r
    covid19_counties()
    #> # A tibble: 11 x 7
    #>    state county    covid19site                         data_site main_site    twitter pui    
    #>    <chr> <chr>     <chr>                               <lgl>     <chr>        <lgl>   <chr>  
    #>  1 CA    Los Ange… http://publichealth.lacounty.gov/m… NA        <NA>         NA      No data
    #>  2 NY    Westches… https://health.westchestergov.com/… NA        <NA>         NA      No data
    #>  3 WA    King      https://www.kingcounty.gov/depts/h… NA        <NA>         NA      No data
    #>  4 WA    Snohomish https://www.snohd.org/484/Novel-Co… NA        <NA>         NA      All da…
    #>  5 WA    Grant     http://granthealth.org/2019-novel-… NA        <NA>         NA      No data
    #>  6 WA    Jefferson https://www.jeffersoncountypublich… NA        <NA>         NA      All da…
    #>  7 WA    Pierce    https://www.tpchd.org/healthy-peop… NA        <NA>         NA      Only p…
    #>  8 WA    Clark     https://www.clark.wa.gov/public-he… NA        <NA>         NA      All da…
    #>  9 WA    Kittitas  https://www.co.kittitas.wa.us/resp… NA        <NA>         NA      No data
    #> 10 CA    Contra C… https://www.coronavirus.cchealth.o… NA        https://cch… NA      <NA>   
    #> 11 CA    Alameda … http://www.acphd.org/2019-ncov.aspx NA        http://www.… NA      <NA>
    ```

### Other

  - **`covid19_urls()`**: Links to official state government sites
    
    ``` r
    covid19_urls()
    #> # A tibble: 56 x 6
    #>    kind  name     url                        filter                    state_id ssl_no_verify
    #>    <chr> <chr>    <chr>                      <chr>                     <chr>    <lgl>        
    #>  1 url   Alaska   "https://services1.arcgis… "css:.ftrTable,html2text… AK       NA           
    #>  2 url   Alabama  "https://services7.arcgis… "css:.ftrTable,html2text… AL       NA           
    #>  3 url   Arkansas "https://www.healthy.arka… "css:#contentBody table:… AR       NA           
    #>  4 url   Arizona  "https://tableau.azdhs.go… "ocr,clean-new-lines"     AZ       NA           
    #>  5 url   Califor… "https://www.cdph.ca.gov/… "css:table:contains(\"St… CA       NA           
    #>  6 url   Colorado "https://covid19.colorado… "css:p:contains(\"Case S… CO       NA           
    #>  7 url   Connect… "https://data.ct.gov/api/… "strip"                   CT       NA           
    #>  8 url   Washing… "https://coronavirus.dc.g… "css:ul:contains(\"teste… DC       NA           
    #>  9 url   Delaware "https://services1.arcgis… "css:.ftrTable,html2text… DE       NA           
    #> 10 url   Florida  "https://floridahealthcov… "css:table,html2text,str… FL       NA           
    #> # … with 46 more rows
    ```

  - **`covid19_press()`**: Information (`title`, `url`, `publication`,
    `author`, etc.) about publications
    
    ``` r
    covid19_press()
    #> # A tibble: 63 x 15
    #>    title url   add_to_covid_tr… feature_on_covi… about_covid_tra… publish_date       
    #>    <chr> <chr> <lgl>            <lgl>            <lgl>            <dttm>             
    #>  1 Why … http… NA               NA               FALSE            NA                 
    #>  2 The … http… NA               NA               TRUE             NA                 
    #>  3 In h… http… FALSE            FALSE            NA               NA                 
    #>  4 The … http… NA               NA               FALSE            NA                 
    #>  5 The … http… FALSE            FALSE            NA               NA                 
    #>  6 Wher… http… TRUE             FALSE            FALSE            NA                 
    #>  7 Expe… http… TRUE             FALSE            FALSE            NA                 
    #>  8 NM C… http… FALSE            FALSE            NA               NA                 
    #>  9 Coro… http… TRUE             TRUE             TRUE             NA                 
    #> 10 Bay … http… TRUE             FALSE            FALSE            NA                 
    #> # … with 53 more rows, and 9 more variables: continually_updated <lgl>, publication <chr>,
    #> #   author <chr>, does_this_source_have_a_data_visualization <lgl>, data_source <chr>,
    #> #   uses_covid_tracking_data <chr>, link_to_viz_image <chr>, twitter_copy <lgl>,
    #> #   language <chr>
    ```

  - **`covid19_screenshots()`**: Information and paths to screenshots of
    original data sources
    
    ``` r
    covid19_screenshots()
    #> # A tibble: 4,611 x 6
    #>    state url                                      date_checked        secondary date     size
    #>    <chr> <chr>                                    <dttm>              <lgl>     <chr>   <int>
    #>  1 AK    https://covidtracking.com/screenshots/A… 2020-03-15 06:13:15 FALSE     20200… 563460
    #>  2 AK    https://covidtracking.com/screenshots/A… 2020-03-15 20:32:25 FALSE     20200… 432003
    #>  3 AK    https://covidtracking.com/screenshots/A… 2020-03-16 14:53:36 FALSE     20200… 563460
    #>  4 AK    https://covidtracking.com/screenshots/A… 2020-03-17 03:06:10 FALSE     20200… 563522
    #>  5 AK    https://covidtracking.com/screenshots/A… 2020-03-17 18:09:31 FALSE     20200… 567852
    #>  6 AK    https://covidtracking.com/screenshots/A… 2020-03-17 22:00:17 FALSE     20200… 565619
    #>  7 AK    https://covidtracking.com/screenshots/A… 2020-03-18 05:00:17 FALSE     20200… 568859
    #>  8 AK    https://covidtracking.com/screenshots/A… 2020-03-18 18:01:15 FALSE     20200… 569429
    #>  9 AK    https://covidtracking.com/screenshots/A… 2020-03-18 23:00:43 FALSE     20200… 517287
    #> 10 AK    https://covidtracking.com/screenshots/A… 2020-03-19 05:00:25 FALSE     20200… 524988
    #> # … with 4,601 more rows
    ```
