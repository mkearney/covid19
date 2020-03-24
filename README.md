
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

  - `covid19_us()`
  - `covid19_us_daily()`

<!-- end list -->

``` r
covid19_us()
#> # A tibble: 1 x 6
#>   positive negative pos_neg hospitalized death  total
#>      <int>    <int>   <int>        <int> <int>  <int>
#> 1    43630   244828  288458         3378   535 303014
covid19_us_daily()
#> # A tibble: 1 x 3
#>    code error           pathname 
#>   <int> <chr>           <chr>    
#> 1   404 404 - NOT FOUND /us_daily
```

### States

  - `covid19_states()`
  - `covid19_states_daily()`
  - `covid19_states_info()`

<!-- end list -->

``` r
covid19_states()
#> # A tibble: 56 x 17
#>    state positive positive_score negative_score negative_regula…
#>    <chr>    <int>          <int>          <int>            <int>
#>  1 AK          36              1              1                1
#>  2 AL         196              1              1                0
#>  3 AR         201              1              1                1
#>  4 AZ         265              1              1                1
#>  5 CA        1733              1              1                1
#>  6 CO         720              1              1                1
#>  7 CT         415              1              1                1
#>  8 DC         137              1              1                1
#>  9 DE          87              1              1                0
#> 10 FL        1227              1              1                1
#> # … with 46 more rows, and 12 more variables: commercial_score <int>,
#> #   grade <chr>, score <int>, negative <int>, pending <int>,
#> #   hospitalized <int>, death <int>, total <int>, last_update_et <chr>,
#> #   check_time_et <chr>, date_modified <dttm>, date_checked <dttm>
covid19_states_daily()
#> # A tibble: 981 x 9
#>      date state positive negative pending hospitalized death total
#>     <int> <chr>    <int>    <int>   <int>        <int> <int> <int>
#>  1 2.02e7 AK          22      946      NA            0    NA   968
#>  2 2.02e7 AL         167     1665      NA           NA     0  1832
#>  3 2.02e7 AR         174      906       0           13     0  1080
#>  4 2.02e7 AS          NA       NA      NA           NA     0     0
#>  5 2.02e7 AZ         265      309       6           NA     2   580
#>  6 2.02e7 CA        1733    12567   12100           NA    27 26400
#>  7 2.02e7 CO         591     4845      NA           58     6  5436
#>  8 2.02e7 CT         415     4085      NA           54    10  4500
#>  9 2.02e7 DC         116     1113      NA           NA     2  1229
#> 10 2.02e7 DE          68       36      NA            0     0   104
#> # … with 971 more rows, and 1 more variable: date_checked <dttm>
covid19_states_info()
#> # A tibble: 56 x 9
#>    state covid19site_old covid19site covid19site_sec… twitter pui   pum   notes
#>    <chr> <chr>           <chr>       <chr>            <chr>   <chr> <lgl> <chr>
#>  1 AK    http://dhss.al… http://dhs… http://dhss.ala… @Alask… All … FALSE "We …
#>  2 AL    http://www.ala… https://al… <NA>             @alpub… No d… FALSE "Las…
#>  3 AR    https://www.he… https://ad… https://www.hea… @adhpio All … TRUE  "The…
#>  4 AS    http://www.sam… http://www… https://www.fac… <NA>    No D… FALSE "Ame…
#>  5 AZ    https://www.az… https://ww… <NA>             @azdhs  All … FALSE "Neg…
#>  6 CA    https://www.cd… https://ww… https://www.cdp… @CAPub… Only… FALSE "Sin…
#>  7 CO    https://www.co… https://co… <NA>             @cdphe  Posi… FALSE "Neg…
#>  8 CT    https://portal… https://po… <NA>             @ctdph  All … FALSE "Lat…
#>  9 DC    https://corona… https://co… <NA>             @_DCHe… All … FALSE "Pos…
#> 10 DE    https://dhss.d… https://dh… <NA>             @Delaw… All … TRUE  "Las…
#> # … with 46 more rows, and 1 more variable: name <chr>
```

    #> 
    #> Attaching package: 'dplyr'
    #> The following objects are masked from 'package:stats':
    #> 
    #>     filter, lag
    #> The following objects are masked from 'package:base':
    #> 
    #>     intersect, setdiff, setequal, union

![](man/figures/README-state-trajectories.png)

### Counties

  - `covid19_counties()`

<!-- end list -->

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

  - `covid19_urls()`
  - `covid19_press()`
  - `covid19_screenshots()`

<!-- end list -->

``` r
covid19_urls()
#> # A tibble: 55 x 5
#>    kind  name     url                     filter                   ssl_no_verify
#>    <chr> <chr>    <chr>                   <chr>                    <lgl>        
#>  1 url   Alaska   http://dhss.alaska.gov… "css:.grid2 > table,htm… NA           
#>  2 url   Alabama  http://www.alabamapubl… "css:.mainContent table… TRUE         
#>  3 url   Arkansas https://www.healthy.ar… "css:#contentBody table… NA           
#>  4 url   Arizona  https://phantomjscloud… "ocr,clean-new-lines"    NA           
#>  5 url   Califor… https://www.cdph.ca.go… "css:table:contains(\"S… NA           
#>  6 url   Colorado https://covid19.colora… "css:p:contains(\"Case … NA           
#>  7 url   Connect… https://portal.ct.gov/… "css:.callout--primary,… NA           
#>  8 url   Washing… https://coronavirus.dc… "css:.field-item > ul:n… NA           
#>  9 url   Delaware https://services1.arcg… "css:.ftrTable,html2tex… NA           
#> 10 url   Florida  https://floridahealthc… "css:table,html2text,st… NA           
#> # … with 45 more rows
covid19_press()
#> # A tibble: 37 x 15
#>    title url   add_to_covid_tr… feature_on_covi… about_covid_tra…
#>    <chr> <chr> <lgl>            <lgl>            <lgl>           
#>  1 Comp… http… TRUE             NA               FALSE           
#>  2 Coro… http… TRUE             NA               FALSE           
#>  3 Coro… http… TRUE             NA               FALSE           
#>  4 Amer… http… FALSE            NA               FALSE           
#>  5 Amer… http… FALSE            NA               FALSE           
#>  6 6 th… http… FALSE            NA               FALSE           
#>  7 Trac… http… TRUE             NA               TRUE            
#>  8 Thes… http… FALSE            NA               FALSE           
#>  9 Huge… http… TRUE             NA               FALSE           
#> 10 U.S.… http… TRUE             NA               FALSE           
#> # … with 27 more rows, and 10 more variables: publish_date <dttm>,
#> #   continually_updated <lgl>, publication <chr>, author <chr>,
#> #   does_this_source_have_a_data_visualization <lgl>, data_source <chr>,
#> #   uses_covid_tracking_data <chr>, link_to_viz_image <chr>,
#> #   twitter_copy <lgl>, language <chr>
covid19_screenshots()
#> # A tibble: 998 x 6
#>    e_tag          state filename    url               date_checked          size
#>    <chr>          <chr> <chr>       <chr>             <dttm>               <int>
#>  1 &quot;53c5935… AK    AK-2020031… https://covidtra… 2020-03-15 06:13:15 563460
#>  2 &quot;ec6f812… AK    AK-2020031… https://covidtra… 2020-03-15 20:32:25 432003
#>  3 &quot;53c5935… AK    AK-2020031… https://covidtra… 2020-03-16 14:53:36 563460
#>  4 &quot;c44db5e… AK    AK-2020031… https://covidtra… 2020-03-17 03:06:10 563522
#>  5 &quot;957edd9… AK    AK-2020031… https://covidtra… 2020-03-17 18:09:31 567852
#>  6 &quot;81fd8a8… AK    AK-2020031… https://covidtra… 2020-03-17 22:00:17 565619
#>  7 &quot;0740aef… AK    AK-2020031… https://covidtra… 2020-03-18 05:00:17 568859
#>  8 &quot;7c51534… AK    AK-2020031… https://covidtra… 2020-03-18 18:01:15 569429
#>  9 &quot;35781dd… AK    AK-2020031… https://covidtra… 2020-03-18 23:00:43 517287
#> 10 &quot;8023e29… AK    AK-2020031… https://covidtra… 2020-03-19 05:00:25 524988
#> # … with 988 more rows
```
