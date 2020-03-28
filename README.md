
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
    #> # A tibble: 1 x 6
    #>   positive negative pos_neg hospitalized death  total
    #>      <int>    <int>   <int>        <int> <int>  <int>
    #> 1    49126   265160  314286         4083   618 328768
    ```

  - **`covid19_us_daily()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`, `states`)
    by day
    
    ``` r
    covid19_us_daily()
    #> # A tibble: 20 x 9
    #>    date       states positive negative pos_neg pending hospitalized death  total
    #>    <date>      <int>    <int>    <int>   <int>   <int>        <int> <int>  <int>
    #>  1 2020-03-23     56    42164   237321  279485   14571         3325   471 294056
    #>  2 2020-03-22     56    31888   193463  225351    2842         2554   398 228216
    #>  3 2020-03-21     56    23203   155909  179112    3477         1964   272 182589
    #>  4 2020-03-20     56    17038   118147  135185    3336           NA   219 138521
    #>  5 2020-03-19     56    11723    89119  100842    3025           NA   160 103867
    #>  6 2020-03-18     56     7731    66225   73956    2538           NA   112  76495
    #>  7 2020-03-17     56     5723    47604   53327    1687           NA    90  54957
    #>  8 2020-03-16     56     4019    36104   40123    1691           NA    71  41714
    #>  9 2020-03-15     51     3173    22548   25721    2242           NA    60  27963
    #> 10 2020-03-14     51     2450    17102   19552    1236           NA    49  20789
    #> 11 2020-03-13     51     1922    13613   15535    1130           NA    39  16665
    #> 12 2020-03-12     51     1315     7949    9264     673           NA    36   9966
    #> 13 2020-03-11     51     1053     5978    7031     563           NA    27   7617
    #> 14 2020-03-10     51      778     3807    4585     469           NA    NA   5054
    #> 15 2020-03-09     51      584     3367    3951     313           NA    NA   4264
    #> 16 2020-03-08     51      417     2335    2752     347           NA    NA   3099
    #> 17 2020-03-07     51      341     1809    2150     602           NA    NA   2752
    #> 18 2020-03-06     36      223     1571    1794     458           NA    NA   2252
    #> 19 2020-03-05     24      176      953    1129     197           NA    NA   1326
    #> 20 2020-03-04     14      118      748     866     103           NA    NA    969
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> # A tibble: 56 x 17
    #>    state positive positive_score negative_score negative_regula…
    #>    <chr>    <int>          <int>          <int>            <int>
    #>  1 AK          36              1              1                1
    #>  2 AL         215              1              1                0
    #>  3 AR         206              1              1                1
    #>  4 AZ         357              1              1                1
    #>  5 CA        1733              1              1                1
    #>  6 CO         720              1              1                1
    #>  7 CT         415              1              1                1
    #>  8 DC         137              1              1                1
    #>  9 DE          91              1              1                0
    #> 10 FL        1412              1              1                1
    #> # … with 46 more rows, and 12 more variables: commercial_score <int>,
    #> #   grade <chr>, score <int>, negative <int>, pending <int>,
    #> #   hospitalized <int>, death <int>, total <int>, last_update_et <chr>,
    #> #   check_time_et <chr>, date_modified <dttm>, date_checked <dttm>
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 981 x 9
    #>    date       state positive negative pending hospitalized death total
    #>    <date>     <chr>    <int>    <int>   <int>        <int> <int> <int>
    #>  1 2020-03-23 AK          22      946      NA            0    NA   968
    #>  2 2020-03-23 AL         167     1665      NA           NA     0  1832
    #>  3 2020-03-23 AR         174      906       0           13     0  1080
    #>  4 2020-03-23 AS          NA       NA      NA           NA     0     0
    #>  5 2020-03-23 AZ         265      309       6           NA     2   580
    #>  6 2020-03-23 CA        1733    12567   12100           NA    27 26400
    #>  7 2020-03-23 CO         591     4845      NA           58     6  5436
    #>  8 2020-03-23 CT         415     4085      NA           54    10  4500
    #>  9 2020-03-23 DC         116     1113      NA           NA     2  1229
    #> 10 2020-03-23 DE          68       36      NA            0     0   104
    #> # … with 971 more rows, and 1 more variable: date_checked <dttm>
    ```

  - **`covid19_states_info()`**: State government links, Twitter
    accounts, notes, etc.
    
    ``` r
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
    ```

  - **`covid19_press()`**: Information (`title`, `url`, `publication`,
    `author`, etc.) about publications
    
    ``` r
    covid19_press()
    #> # A tibble: 38 x 15
    #>    title url   add_to_covid_tr… feature_on_covi… about_covid_tra…
    #>    <chr> <chr> <lgl>            <lgl>            <lgl>           
    #>  1 Coro… http… TRUE             NA               TRUE            
    #>  2 Comp… http… TRUE             NA               FALSE           
    #>  3 Coro… http… TRUE             NA               FALSE           
    #>  4 Coro… http… TRUE             NA               FALSE           
    #>  5 Amer… http… FALSE            NA               FALSE           
    #>  6 Amer… http… FALSE            NA               FALSE           
    #>  7 6 th… http… FALSE            NA               FALSE           
    #>  8 Trac… http… TRUE             NA               TRUE            
    #>  9 Thes… http… FALSE            NA               FALSE           
    #> 10 Huge… http… TRUE             NA               FALSE           
    #> # … with 28 more rows, and 10 more variables: publish_date <dttm>,
    #> #   continually_updated <lgl>, publication <chr>, author <chr>,
    #> #   does_this_source_have_a_data_visualization <lgl>, data_source <chr>,
    #> #   uses_covid_tracking_data <chr>, link_to_viz_image <chr>,
    #> #   twitter_copy <lgl>, language <chr>
    ```

  - **`covid19_screenshots()`**: Information and paths to screenshots of
    original data sources
    
    ``` r
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
