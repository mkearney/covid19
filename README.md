
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
    #> # A tibble: 1 x 10
    #>   positive negative pos_neg hospitalized death  total hash            last_modified       notes                        total_test_resu…
    #>      <int>    <int>   <int>        <int> <int>  <int> <chr>           <dttm>              <chr>                                   <int>
    #> 1   139061   692290  831351        19730  2428 831351 1502f0591fa766… 2020-03-29 23:44:29 "Please stop using the \"to…           831351
    ```

  - **`covid19_us_daily()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`, `states`)
    by day
    
    ``` r
    covid19_us_daily()
    #> # A tibble: 26 x 17
    #>    date       states positive negative pos_neg pending hospitalized death  total hash  date_checked        total_test_resu…
    #>    <date>      <int>    <int>    <int>   <int>   <int>        <int> <int>  <int> <chr> <dttm>                         <int>
    #>  1 2020-03-29     56   139061   692290  831351   65549        19730  2428 896900 0bcb… 2020-03-29 20:00:00           831351
    #>  2 2020-03-28     56   118234   617470  735704   65712        16729  1965 801416 a549… 2020-03-28 20:00:00           735704
    #>  3 2020-03-27     56    99413   527220  626633   60094        13718  1530 686727 5e96… 2020-03-27 20:00:00           626633
    #>  4 2020-03-26     56    80735   438603  519338   60251        10131  1163 579589 77e7… 2020-03-26 20:00:00           519338
    #>  5 2020-03-25     56    63928   357604  421532   51235         6136   900 472767 99e1… 2020-03-25 20:00:00           421532
    #>  6 2020-03-24     56    51954   292758  344712   14433         4468   675 359145 eaed… 2020-03-24 20:00:00           344712
    #>  7 2020-03-23     56    42152   237321  279473   14571         3325   471 294044 cca0… 2020-03-23 20:00:00           279473
    #>  8 2020-03-22     56    31879   193463  225342    2842         2554   398 228184 4ddf… 2020-03-22 20:00:00           225342
    #>  9 2020-03-21     56    23197   155909  179106    3477         1964   272 182583 3947… 2020-03-21 20:00:00           179106
    #> 10 2020-03-20     56    17033   118147  135180    3336           NA   219 138516 aaf5… 2020-03-20 20:00:00           135180
    #> # … with 16 more rows, and 5 more variables: death_increase <int>, hospitalized_increase <int>, negative_increase <int>,
    #> #   positive_increase <int>, total_test_results_increase <int>
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> # A tibble: 56 x 21
    #>    state positive positive_score negative_score negative_regula… commercial_score grade score negative pending hospitalized death total
    #>    <chr>    <int>          <int>          <int>            <int>            <int> <chr> <int>    <int>   <int>        <int> <int> <int>
    #>  1 AK         102              1              1                1                1 A         4     3232      NA            6     2  3334
    #>  2 AL         806              1              1                0                1 B         3     4184      NA           NA     4  4990
    #>  3 AR         426              1              1                1                1 A         4     3027      NA           48     6  3453
    #>  4 AZ         919              1              1                0                1 B         3    12953      NA           78    17 13872
    #>  5 CA        5708              1              1                1                0 B         3    20549   64400         1034   123 90657
    #>  6 CO        2061              1              1                1                1 A         4    11215      NA          274    44 13276
    #>  7 CT        1993              1              1                1                1 A         4     9907      NA          404    34 11900
    #>  8 DC         342              1              1                1                1 A         4     2469       1           NA     5  2812
    #>  9 DE         232              1              1                0                0 C         2       36      NA           33     6   268
    #> 10 FL        4246              1              1                1                1 A         4    39070      NA          594    56 43316
    #> # … with 46 more rows, and 8 more variables: last_update_et <chr>, check_time_et <chr>, total_test_results <int>, fips <chr>,
    #> #   date_modified <dttm>, date_checked <dttm>, notes <chr>, hash <chr>
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 1,317 x 17
    #>    date       state positive negative pending hospitalized death total hash  date_checked        total_test_resu… fips  death_increase
    #>    <date>     <chr>    <int>    <int>   <int>        <int> <int> <int> <chr> <dttm>                         <int> <chr>          <int>
    #>  1 2020-03-29 AK         102     3232      NA            6     2  3334 d4c0… 2020-03-29 20:00:00             3334 02                 0
    #>  2 2020-03-29 AL         806     4184      NA           NA     4  4990 9dbf… 2020-03-29 20:00:00             4990 01                 1
    #>  3 2020-03-29 AR         426     3027      NA           48     6  3453 2c8e… 2020-03-29 20:00:00             3453 05                 1
    #>  4 2020-03-29 AS          NA       NA      NA           NA     0     0 f205… 2020-03-29 20:00:00                0 60                 0
    #>  5 2020-03-29 AZ         919    12953      NA           78    17 13872 14de… 2020-03-29 20:00:00            13872 04                 2
    #>  6 2020-03-29 CA        5708    20549   64400         1034   123 90657 c364… 2020-03-29 20:00:00            26257 06                22
    #>  7 2020-03-29 CO        2061    11215      NA          274    44 13276 1076… 2020-03-29 20:00:00            13276 08                13
    #>  8 2020-03-29 CT        1993     9907      NA          404    34 11900 a2fc… 2020-03-29 20:00:00            11900 09                 7
    #>  9 2020-03-29 DC         342     2469       1           NA     5  2812 951a… 2020-03-29 20:00:00             2811 11                 1
    #> 10 2020-03-29 DE         232       36      NA           33     6   268 ba8e… 2020-03-29 20:00:00              268 10                 3
    #> # … with 1,307 more rows, and 4 more variables: hospitalized_increase <int>, negative_increase <int>, positive_increase <int>,
    #> #   total_test_results_increase <int>
    ```

  - **`covid19_states_info()`**: State government links, Twitter
    accounts, notes, etc.
    
    ``` r
    covid19_states_info()
    #> # A tibble: 56 x 10
    #>    state covid19site_old            covid19site            covid19site_secondary   twitter   pui    pum   notes            fips  name  
    #>    <chr> <chr>                      <chr>                  <chr>                   <chr>     <chr>  <lgl> <chr>            <chr> <chr> 
    #>  1 AK    http://dhss.alaska.gov/dp… http://dhss.alaska.go… http://dhss.alaska.gov… @Alaska_… All d… FALSE "Total tests ar… 02    Alaska
    #>  2 AL    http://www.alabamapublich… https://alpublichealt… <NA>                    @alpubli… No da… FALSE "Negatives = (T… 01    Alaba…
    #>  3 AR    https://www.healthy.arkan… https://www.healthy.a… https://adem.maps.arcg… @adhpio   All d… TRUE  "Data is displa… 05    Arkan…
    #>  4 AS    http://www.samoagovt.ws/2… https://www.americans… https://www.facebook.c… https://… No Da… FALSE "American Samoa… 60    Ameri…
    #>  5 AZ    https://www.azdhs.gov/pre… https://www.azdhs.gov… <NA>                    @azdhs    All d… FALSE "Negative = “Ru… 04    Arizo…
    #>  6 CA    https://www.cdph.ca.gov/P… https://www.cdph.ca.g… https://www.cdph.ca.go… @CAPubli… Only … FALSE "California con… 06    Calif…
    #>  7 CO    https://www.colorado.gov/… https://covid19.color… <NA>                    @cdphe    Posit… FALSE "Negative = Tot… 08    Color…
    #>  8 CT    https://portal.ct.gov/Cor… https://portal.ct.gov… <NA>                    @ctdph    All d… FALSE "Data is being … 09    Conne…
    #>  9 DC    https://coronavirus.dc.go… https://coronavirus.d… <NA>                    @_DCHeal… All d… FALSE "Positive and N… 11    Distr…
    #> 10 DE    https://dhss.delaware.gov… https://dhss.delaware… <NA>                    @Delawar… All d… TRUE  "Last reported … 10    Delaw…
    #> # … with 46 more rows
    ```

![](man/figures/README-state-trajectories.png)

### Counties

  - **`covid19_counties()`**: County-level links for government sites,
    Twitter accounts, etc.
    
    ``` r
    covid19_counties()
    #> # A tibble: 11 x 7
    #>    state county       covid19site                                                         data_site main_site        twitter pui       
    #>    <chr> <chr>        <chr>                                                               <lgl>     <chr>            <lgl>   <chr>     
    #>  1 CA    Los Angeles  http://publichealth.lacounty.gov/media/Coronavirus/#                NA        <NA>             NA      No data   
    #>  2 NY    Westchester  https://health.westchestergov.com/2019-novel-coronavirus            NA        <NA>             NA      No data   
    #>  3 WA    King         https://www.kingcounty.gov/depts/health/communicable-diseases/dise… NA        <NA>             NA      No data   
    #>  4 WA    Snohomish    https://www.snohd.org/484/Novel-Coronavirus-2019                    NA        <NA>             NA      All data  
    #>  5 WA    Grant        http://granthealth.org/2019-novel-coronavirus-2019-ncov/            NA        <NA>             NA      No data   
    #>  6 WA    Jefferson    https://www.jeffersoncountypublichealth.org/1429/COVID-19           NA        <NA>             NA      All data  
    #>  7 WA    Pierce       https://www.tpchd.org/healthy-people/human-coronavirus              NA        <NA>             NA      Only posi…
    #>  8 WA    Clark        https://www.clark.wa.gov/public-health/novel-coronavirus            NA        <NA>             NA      All data  
    #>  9 WA    Kittitas     https://www.co.kittitas.wa.us/response/202003-covid19/default.aspx  NA        <NA>             NA      No data   
    #> 10 CA    Contra Costa https://www.coronavirus.cchealth.org/                               NA        https://cchealt… NA      <NA>      
    #> 11 CA    Alameda Cou… http://www.acphd.org/2019-ncov.aspx                                 NA        http://www.acph… NA      <NA>
    ```

### Other

  - **`covid19_urls()`**: Links to official state government sites
    
    ``` r
    covid19_urls()
    #> # A tibble: 56 x 5
    #>    kind  name      url                                                               state_id filter                                   
    #>    <chr> <chr>     <chr>                                                             <chr>    <chr>                                    
    #>  1 url   Alaska    http://dhss.alaska.gov/dph/Epi/id/SiteAssets/Pages/HumanCoV/COVI… AK        <NA>                                    
    #>  2 url   Alabama   https://services7.arcgis.com/4RQmZZ0yaZkGR1zy/arcgis/rest/servic… AL        <NA>                                    
    #>  3 url   Arkansas  https://www.healthy.arkansas.gov/programs-services/topics/novel-… AR       "css:#contentBody table:contains(\"Cases…
    #>  4 url   Arizona   https://phantomjscloud.com/api/browser/v2/ak-7r01w-m166n-bm6wx-r… AZ       "ocr,clean-new-lines"                    
    #>  5 url   Californ… https://www.cdph.ca.gov/Programs/OPA/Pages/New-Release-2020.aspx  CA       "css:table:contains(\"State Officials An…
    #>  6 url   Colorado  https://covid19.colorado.gov/data                                 CO       "css:p:contains(\"Case Summary\") ~ p,ht…
    #>  7 url   Connecti… https://portal.ct.gov/Coronavirus                                 CT       "css:.content a[href*=\"CTDPH\"],strip"  
    #>  8 url   Washingt… https://coronavirus.dc.gov/page/coronavirus-data                  DC       "css:.datablock > ul:nth-child(3),html2t…
    #>  9 url   Delaware  https://phantomjscloud.com/api/browser/v2/ak-7r01w-m166n-bm6wx-r… DE       "sha1sum"                                
    #> 10 url   Florida   https://floridahealthcovid19.gov/                                 FL       "css:table,html2text,strip"              
    #> # … with 46 more rows
    ```

  - **`covid19_press()`**: Information (`title`, `url`, `publication`,
    `author`, etc.) about publications
    
    ``` r
    covid19_press()
    #> # A tibble: 60 x 15
    #>    title url   add_to_covid_tr… feature_on_covi… about_covid_tra… publish_date        continually_upd… publication author
    #>    <chr> <chr> <lgl>            <lgl>            <lgl>            <dttm>              <lgl>            <chr>       <chr> 
    #>  1 In h… http… FALSE            FALSE            NA               NA                  NA               The Atlant… <NA>  
    #>  2 The … http… NA               NA               FALSE            NA                  NA               FiveThirty… <NA>  
    #>  3 The … http… FALSE            FALSE            NA               NA                  NA               STAT News   <NA>  
    #>  4 Wher… http… TRUE             FALSE            FALSE            NA                  NA               The New Yo… <NA>  
    #>  5 Expe… http… TRUE             FALSE            FALSE            NA                  NA               FiveThirty… <NA>  
    #>  6 NM C… http… FALSE            FALSE            NA               NA                  NA               SF Reporter <NA>  
    #>  7 Coro… http… TRUE             TRUE             TRUE             NA                  NA               ProPublica  <NA>  
    #>  8 Bay … http… TRUE             FALSE            FALSE            NA                  NA               San Franci… <NA>  
    #>  9 STAY… http… FALSE            FALSE            FALSE            NA                  NA               Hack a Day  <NA>  
    #> 10 Fact… http… TRUE             TRUE             NA               NA                  NA               CNN         <NA>  
    #> # … with 50 more rows, and 6 more variables: does_this_source_have_a_data_visualization <lgl>, data_source <chr>,
    #> #   uses_covid_tracking_data <chr>, link_to_viz_image <chr>, twitter_copy <lgl>, language <chr>
    ```

  - **`covid19_screenshots()`**: Information and paths to screenshots of
    original data sources
    
    ``` r
    covid19_screenshots()
    #> # A tibble: 2,277 x 4
    #>    state url                                                             date_checked           size
    #>    <chr> <chr>                                                           <chr>                 <int>
    #>  1 AK    https://covidtracking.com/screenshots/AK/AK-20200315-021315.png 2020-03-15T06:13:15Z 563460
    #>  2 AK    https://covidtracking.com/screenshots/AK/AK-20200315-163225.png 2020-03-15T20:32:25Z 432003
    #>  3 AK    https://covidtracking.com/screenshots/AK/AK-20200316-105336.png 2020-03-16T14:53:36Z 563460
    #>  4 AK    https://covidtracking.com/screenshots/AK/AK-20200316-230610.png 2020-03-17T03:06:10Z 563522
    #>  5 AK    https://covidtracking.com/screenshots/AK/AK-20200317-140931.png 2020-03-17T18:09:31Z 567852
    #>  6 AK    https://covidtracking.com/screenshots/AK/AK-20200317-180017.png 2020-03-17T22:00:17Z 565619
    #>  7 AK    https://covidtracking.com/screenshots/AK/AK-20200318-010017.png 2020-03-18T05:00:17Z 568859
    #>  8 AK    https://covidtracking.com/screenshots/AK/AK-20200318-140115.png 2020-03-18T18:01:15Z 569429
    #>  9 AK    https://covidtracking.com/screenshots/AK/AK-20200318-190043.png 2020-03-18T23:00:43Z 517287
    #> 10 AK    https://covidtracking.com/screenshots/AK/AK-20200319-010025.png 2020-03-19T05:00:25Z 524988
    #> # … with 2,267 more rows
    ```
