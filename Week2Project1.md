---
title: "Week2 Project1"
author: "Ken"
date: "2017年3月16日"
output: 
  html_document: 
    fig_caption: yes
    keep_md: yes
    toc: yes
---



```r
library(leaflet)

dateOfDocCreate <- c("03/16/2017")
datesOfCreation <- as.Date(dateOfDocCreate, "%m/%d/%Y")
```
This document creation date is: 

```r
datesOfCreation
```

```
## [1] "2017-03-16"
```


```r
library(leaflet)
my_map1 <- leaflet() %>%
  addTiles()
my_map2 <- leaflet() %>%
  addTiles()
my_map1 <- my_map1 %>%
  addMarkers(lat=31.195006, lng=121.469321, popup="Ken Gu's apartment")
my_map2 <- my_map2 %>%
  addCircleMarkers(lat=31.226352, lng=121.510692, popup="Ken's birthplace")
#  addMarkers(my_map, lat=31.226352, lng=121.510692, popup="Ken's birthplace")
#  addTiles()
```
The first map is Author's current living place; the second one refers to Author's birth place

```r
my_map1
```

```
## Error in loadNamespace(name): there is no package called 'webshot'
```

```r
my_map2
```

```
## Error in loadNamespace(name): there is no package called 'webshot'
```
