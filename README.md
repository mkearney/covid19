
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
    #>   positive negative pos_neg hospitalized death  total hash                       last_modified       notes                                                  total_test_resul…
    #>      <int>    <int>   <int>        <int> <int>  <int> <chr>                      <dttm>              <chr>                                                              <int>
    #> 1   163565   801300  964865        22617  3012 964865 b3cfe808543b50aa1df16d4ca… 2020-03-31 16:22:25 "Please stop using the \"total\" and \"posNeg\" field…            964865
    ```

  - **`covid19_us_daily()`**: Counts (`positive`, `negative`, `pos_neg`
    (positive + negative), `hospitalized`, `death`, `total`, `states`)
    by day
    
    ``` r
    covid19_us_daily()
    #> # A tibble: 27 x 17
    #>    date       states positive negative pos_neg pending hospitalized death  total hash  date_checked        total_test_resu… death_increase hospitalized_in… negative_increa…
    #>    <date>      <int>    <int>    <int>   <int>   <int>        <int> <int>  <int> <chr> <dttm>                         <int>          <int>            <int>            <int>
    #>  1 2020-03-30     56   160530   784324  944854   65382        22303  2939 1.01e6 5d6b… 2020-03-30 20:00:00           944854            511             2573            92034
    #>  2 2020-03-29     56   139061   692290  831351   65549        19730  2428 8.97e5 0bcb… 2020-03-29 20:00:00           831351            463             3001            74820
    #>  3 2020-03-28     56   118234   617470  735704   65712        16729  1965 8.01e5 a549… 2020-03-28 20:00:00           735704            435             3011            90250
    #>  4 2020-03-27     56    99413   527220  626633   60094        13718  1530 6.87e5 5e96… 2020-03-27 20:00:00           626633            367             3587            88617
    #>  5 2020-03-26     56    80735   438603  519338   60251        10131  1163 5.80e5 77e7… 2020-03-26 20:00:00           519338            263             3995            80999
    #>  6 2020-03-25     56    63928   357604  421532   51235         6136   900 4.73e5 99e1… 2020-03-25 20:00:00           421532            225             1668            64846
    #>  7 2020-03-24     56    51954   292758  344712   14433         4468   675 3.59e5 eaed… 2020-03-24 20:00:00           344712            204             1143            55437
    #>  8 2020-03-23     56    42152   237321  279473   14571         3325   471 2.94e5 cca0… 2020-03-23 20:00:00           279473             73              771            43858
    #>  9 2020-03-22     56    31879   193463  225342    2842         2554   398 2.28e5 4ddf… 2020-03-22 20:00:00           225342            126              590            37554
    #> 10 2020-03-21     56    23197   155909  179106    3477         1964   272 1.83e5 3947… 2020-03-21 20:00:00           179106             53             1964            37762
    #> # … with 17 more rows, and 2 more variables: positive_increase <int>, total_test_results_increase <int>
    ```

### States

  - **`covid19_states()`**: Counts (`positive`, `negative`,
    `hospitalized`, `death`, `pending`, `total`) and grades
    (`positive_score`, `negative_score`, `grade`, `score`) by state
    
    ``` r
    covid19_states()
    #> # A tibble: 56 x 21
    #>    state positive positive_score negative_score negative_regula… commercial_score grade score negative pending hospitalized death total last_update_et check_time_et
    #>    <chr>    <int>          <int>          <int>            <int>            <int> <chr> <int>    <int>   <int>        <int> <int> <int> <chr>          <chr>        
    #>  1 AK         119              1              1                1                1 A         4     3594      NA            7     3  3713 3/30 19:00     3/30 22:42   
    #>  2 AL         949              1              1                0                1 B         3     5694      NA           NA    13  6643 3/31 00:00     3/31 10:21   
    #>  3 AR         508              1              1                1                1 A         4     5520      NA           62     7  6028 3/30 20:17     3/31 10:22   
    #>  4 AZ        1157              1              1                0                1 B         3    15602      NA           78    20 16759 3/30 00:00     3/30 23:20   
    #>  5 CA        7398              1              1                1                0 B         3    21488   56550         1432   146 85436 3/30 00:00     3/30 22:50   
    #>  6 CO        2627              1              1                1                1 A         4    12737      NA          414    51 15364 3/30 18:00     3/30 21:59   
    #>  7 CT        2571              1              1                1                1 A         4    12029      NA          517    36 14600 3/30 15:30     3/30 23:38   
    #>  8 DC         495              1              1                1                1 A         4     3262       2           NA     9  3759 3/30 00:00     3/30 22:55   
    #>  9 DE         264              1              1                0                0 C         2     2216      NA           46     7  2480 3/31 00:00     3/31 10:36   
    #> 10 FL        5704              1              1                1                1 A         4    49796      NA          764    71 55500 3/30 18:30     3/30 22:46   
    #> # … with 46 more rows, and 6 more variables: total_test_results <int>, fips <chr>, date_modified <dttm>, date_checked <dttm>, notes <chr>, hash <chr>
    ```

  - **`covid19_states_daily()`**: Counts (`positive`, `negative`,
    `pos_neg` (positive + negative), `hospitalized`, `death`, `total`)
    by day
    
    ``` r
    covid19_states_daily()
    #> # A tibble: 1,373 x 17
    #>    date       state positive negative pending hospitalized death total hash  date_checked        total_test_resu… fips  death_increase hospitalized_in… negative_increa…
    #>    <date>     <chr>    <int>    <int>   <int>        <int> <int> <int> <chr> <dttm>                         <int> <chr>          <int>            <int>            <int>
    #>  1 2020-03-30 AK         114     3540      NA            7     3  3654 01a1… 2020-03-30 20:00:00             3654 02                 1                1              308
    #>  2 2020-03-30 AL         859     5694      NA           NA     6  6553 1ced… 2020-03-30 20:00:00             6553 01                 2                0             1510
    #>  3 2020-03-30 AR         473     5262      NA           62     7  5735 7199… 2020-03-30 20:00:00             5735 05                 1               14             2235
    #>  4 2020-03-30 AS          NA       NA      NA           NA     0     0 955d… 2020-03-30 20:00:00                0 60                 0                0                0
    #>  5 2020-03-30 AZ        1157    15602      NA           78    20 16759 2f64… 2020-03-30 20:00:00            16759 04                 3                0             2649
    #>  6 2020-03-30 CA        6447    20549   64400         1432   133 91396 ae23… 2020-03-30 20:00:00            26996 06                10              398                0
    #>  7 2020-03-30 CO        2627    12737      NA          414    51 15364 c700… 2020-03-30 20:00:00            15364 08                 7              140             1522
    #>  8 2020-03-30 CT        2571    12029      NA          517    36 14600 c7a0… 2020-03-30 20:00:00            14600 09                 2              113             2122
    #>  9 2020-03-30 DC         401     2682       2           NA     9  3085 0c35… 2020-03-30 20:00:00             3083 11                 4                0              213
    #> 10 2020-03-30 DE         264     2216      NA           45     6  2480 cd97… 2020-03-30 20:00:00             2480 10                 0               12             2180
    #> # … with 1,363 more rows, and 2 more variables: positive_increase <int>, total_test_results_increase <int>
    ```

  - **`covid19_states_info()`**: State government links, Twitter
    accounts, notes, etc.
    
    ``` r
    covid19_states_info()
    #> # A tibble: 56 x 10
    #>    state covid19site_old                   covid19site                    covid19site_secondary        twitter     pui     pum   notes                          fips  name   
    #>    <chr> <chr>                             <chr>                          <chr>                        <chr>       <chr>   <lgl> <chr>                          <chr> <chr>  
    #>  1 AK    http://dhss.alaska.gov/dph/Epi/i… http://dhss.alaska.gov/dph/Ep… http://dhss.alaska.gov/dph/… @Alaska_DH… All da… FALSE "Total tests are taken from t… 02    Alaska 
    #>  2 AL    http://www.alabamapublichealth.g… https://alpublichealth.maps.a… <NA>                         @alpublich… No data FALSE "Negatives = (Totals - Positi… 01    Alabama
    #>  3 AR    https://www.healthy.arkansas.gov… https://www.healthy.arkansas.… https://adem.maps.arcgis.co… @adhpio     All da… TRUE  "Data is displayed across two… 05    Arkans…
    #>  4 AS    http://www.samoagovt.ws/2020/03/… https://www.americansamoa.gov… https://www.facebook.com/am… https://ww… No Data FALSE "American Samoa has limited o… 60    Americ…
    #>  5 AZ    https://www.azdhs.gov/preparedne… https://www.azdhs.gov/prepare… <NA>                         @azdhs      All da… FALSE "Dashboard now has a new tab … 04    Arizona
    #>  6 CA    https://www.cdph.ca.gov/Programs… https://www.cdph.ca.gov/Progr… https://www.cdph.ca.gov/Pro… @CAPublicH… Only p… FALSE "California continues to show… 06    Califo…
    #>  7 CO    https://www.colorado.gov/pacific… https://covid19.colorado.gov/… <NA>                         @cdphe      Positi… FALSE "Negative = People Tested - C… 08    Colora…
    #>  8 CT    https://portal.ct.gov/Coronavirus https://portal.ct.gov/Coronav… <NA>                         @ctdph      All da… FALSE "Data is being provided in a … 09    Connec…
    #>  9 DC    https://coronavirus.dc.gov/       https://coronavirus.dc.gov/pa… <NA>                         @_DCHealth  All da… FALSE "Positive and Negative includ… 11    Distri…
    #> 10 DE    https://dhss.delaware.gov/dhss/d… https://dhss.delaware.gov/dhs… <NA>                         @Delaware_… All da… TRUE  "Last reported negative numbe… 10    Delawa…
    #> # … with 46 more rows
    ```

![](man/figures/README-state-trajectories.png)
![](man/figures/README-state-cases.png)

### Counties

  - **`covid19_counties()`**: County-level links for government sites,
    Twitter accounts, etc.
    
    ``` r
    covid19_counties()
    #> # A tibble: 11 x 7
    #>    state county         covid19site                                                                                      data_site main_site            twitter pui          
    #>    <chr> <chr>          <chr>                                                                                            <lgl>     <chr>                <lgl>   <chr>        
    #>  1 CA    Los Angeles    http://publichealth.lacounty.gov/media/Coronavirus/#                                             NA        <NA>                 NA      No data      
    #>  2 NY    Westchester    https://health.westchestergov.com/2019-novel-coronavirus                                         NA        <NA>                 NA      No data      
    #>  3 WA    King           https://www.kingcounty.gov/depts/health/communicable-diseases/disease-control/novel-coronavirus… NA        <NA>                 NA      No data      
    #>  4 WA    Snohomish      https://www.snohd.org/484/Novel-Coronavirus-2019                                                 NA        <NA>                 NA      All data     
    #>  5 WA    Grant          http://granthealth.org/2019-novel-coronavirus-2019-ncov/                                         NA        <NA>                 NA      No data      
    #>  6 WA    Jefferson      https://www.jeffersoncountypublichealth.org/1429/COVID-19                                        NA        <NA>                 NA      All data     
    #>  7 WA    Pierce         https://www.tpchd.org/healthy-people/human-coronavirus                                           NA        <NA>                 NA      Only positiv…
    #>  8 WA    Clark          https://www.clark.wa.gov/public-health/novel-coronavirus                                         NA        <NA>                 NA      All data     
    #>  9 WA    Kittitas       https://www.co.kittitas.wa.us/response/202003-covid19/default.aspx                               NA        <NA>                 NA      No data      
    #> 10 CA    Contra Costa   https://www.coronavirus.cchealth.org/                                                            NA        https://cchealth.or… NA      <NA>         
    #> 11 CA    Alameda County http://www.acphd.org/2019-ncov.aspx                                                              NA        http://www.acphd.or… NA      <NA>
    ```

### Other

  - **`covid19_urls()`**: Links to official state government sites
    
    ``` r
    covid19_urls()
    #> # A tibble: 56 x 5
    #>    kind  name       url                                                                                              state_id filter                                         
    #>    <chr> <chr>      <chr>                                                                                            <chr>    <chr>                                          
    #>  1 url   Alaska     http://dhss.alaska.gov/dph/Epi/id/SiteAssets/Pages/HumanCoV/COVID-19_epi_testingcurve.csv        AK        <NA>                                          
    #>  2 url   Alabama    https://services7.arcgis.com/4RQmZZ0yaZkGR1zy/arcgis/rest/services/COV19_Public_Dashboard_ReadO… AL        <NA>                                          
    #>  3 url   Arkansas   https://www.healthy.arkansas.gov/programs-services/topics/novel-coronavirus                      AR       "css:#contentBody table:contains(\"Cases\"),ht…
    #>  4 url   Arizona    https://phantomjscloud.com/api/browser/v2/ak-7r01w-m166n-bm6wx-r4vn0-4m2m9/?request=%7Burl%3A%2… AZ       "ocr,clean-new-lines"                          
    #>  5 url   California https://www.cdph.ca.gov/Programs/OPA/Pages/New-Release-2020.aspx                                 CA       "css:table:contains(\"State Officials Announce…
    #>  6 url   Colorado   https://covid19.colorado.gov/data                                                                CO       "css:p:contains(\"Case Summary\") ~ p,html2tex…
    #>  7 url   Connectic… https://portal.ct.gov/Coronavirus                                                                CT       "css:.content a[href*=\"CTDPH\"],strip"        
    #>  8 url   Washingto… https://coronavirus.dc.gov/page/coronavirus-data                                                 DC       "css:ul:contains(\"tested\") li:first-child,ht…
    #>  9 url   Delaware   https://services1.arcgis.com/PlCPCPzGOwulHUHo/arcgis/rest/services/DEMA_COVID_County_Boundary_T… DE       "css:.ftrTable,html2text,strip"                
    #> 10 url   Florida    https://floridahealthcovid19.gov/                                                                FL       "css:table,html2text,strip"                    
    #> # … with 46 more rows
    ```

  - **`covid19_press()`**: Information (`title`, `url`, `publication`,
    `author`, etc.) about publications
    
    ``` r
    covid19_press()
    #> # A tibble: 60 x 15
    #>    title url   add_to_covid_tr… feature_on_covi… about_covid_tra… publish_date        continually_upd… publication author does_this_sourc… data_source uses_covid_trac…
    #>    <chr> <chr> <lgl>            <lgl>            <lgl>            <dttm>              <lgl>            <chr>       <chr>  <lgl>            <chr>       <chr>           
    #>  1 In h… http… FALSE            FALSE            NA               NA                  NA               The Atlant… <NA>   NA               <NA>        <NA>            
    #>  2 The … http… NA               NA               FALSE            NA                  NA               FiveThirty… <NA>   TRUE             COVID Trac… <NA>            
    #>  3 The … http… FALSE            FALSE            NA               NA                  NA               STAT News   <NA>   NA               <NA>        <NA>            
    #>  4 Wher… http… TRUE             FALSE            FALSE            NA                  NA               The New Yo… <NA>   TRUE             COVID Trac… yes             
    #>  5 Expe… http… TRUE             FALSE            FALSE            NA                  NA               FiveThirty… <NA>   TRUE             University… <NA>            
    #>  6 NM C… http… FALSE            FALSE            NA               NA                  NA               SF Reporter <NA>   NA               <NA>        <NA>            
    #>  7 Coro… http… TRUE             TRUE             TRUE             NA                  NA               ProPublica  <NA>   FALSE            <NA>        <NA>            
    #>  8 Bay … http… TRUE             FALSE            FALSE            NA                  NA               San Franci… <NA>   FALSE            <NA>        <NA>            
    #>  9 STAY… http… FALSE            FALSE            FALSE            NA                  NA               Hack a Day  <NA>   NA               <NA>        <NA>            
    #> 10 Fact… http… TRUE             TRUE             NA               NA                  NA               CNN         <NA>   FALSE            <NA>        <NA>            
    #> # … with 50 more rows, and 3 more variables: link_to_viz_image <chr>, twitter_copy <lgl>, language <chr>
    ```

  - **`covid19_screenshots()`**: Information and paths to screenshots of
    original data sources
    
    ``` r
    covid19_screenshots()
    #> # A tibble: 2,672 x 4
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
    #> # … with 2,662 more rows
    ```
