<!-- README.md is generated from README.Rmd. Please edit that file -->
rblocks
=======

Is a fun and visual way to learn data structures and control flow in R. The package was originally developed by [Ramnath Vaidyanathan](http://ramnathv.github.io/), please refer to this [blog post](http://ramnathv.github.io/posts/rblocks-pkg) for more details on the original package.

In this fork I have added the ability to display block indices and the original data contents. This is particularly useful to create blocks when teaching about R data structures and how to subset them.

Installation
------------

``` r
require(devtools)
devtools::install_github('rblocks', 'nareal')
```

An example
----------

``` r
library(rblocks)
mydf <- data.frame(a=1:2, b=2:3)
b_dataframe <- make_block(mydf, type = "data.frame")
b_dataframe[1,1] <- "orange"
b_dataframe[2,2] <- "orange"
display(b_dataframe, show_indices = T, show_data = T)
```

![](README-dataframe_block-1.png)

For more details please refer to the package vignette.

``` r
vignette("rblocks-intro")
# Or
browseVignettes("rblocks")
```
