## ----echo=FALSE, include=FALSE-------------------------------------------
library(knitr)
knitr::opts_chunk$set(echo=TRUE, warning=FALSE, message=FALSE, fig.width = 3.5, fig.height = 3.5)

## ---- eval=FALSE---------------------------------------------------------
#  devtools::install_github('rblocks', 'nareal')

## ------------------------------------------------------------------------
library(rblocks)

## ------------------------------------------------------------------------
a_vector <- make_block(7, type = "vector")
a_vector

## ------------------------------------------------------------------------
b_vector <- make_block(7:1, type = "vector")
b_vector

## ------------------------------------------------------------------------
attributes(b_vector)

## ------------------------------------------------------------------------
display(b_vector, show_indices = T)

## ------------------------------------------------------------------------
display(b_vector, show_indices = T, show_data = T)

## ------------------------------------------------------------------------
a_matrix <- make_block(3, 5, type = "matrix")
a_matrix

## ------------------------------------------------------------------------
display(a_matrix, show_indices = T)

## ------------------------------------------------------------------------
my_matrix <- matrix(1:10, nrow = 5, ncol = 2)
b_matrix <- make_block(my_matrix, type = "matrix")
display(b_matrix, show_data = T)

## ---- echo=TRUE----------------------------------------------------------
a_dataframe <- make_block(5, 5, type = "data.frame")
a_dataframe

## ------------------------------------------------------------------------
mydf <- data.frame(a=1:2, b=2:3)
b_dataframe <- make_block(mydf, type = "data.frame")
b_dataframe

## ------------------------------------------------------------------------
display(b_dataframe, show_indices = T, show_data = T)

## ------------------------------------------------------------------------
display(b_dataframe, show_indices = T, show_data = T)

## ------------------------------------------------------------------------
a_list <- make_block(list(x = 1:2, y = LETTERS[1:4], z = c(T, F)))
a_list

## ------------------------------------------------------------------------
display(a_list, show_indices = T)

## ------------------------------------------------------------------------
fill_by <- function(f){
  function(x){
    switch(f(x), 'numeric' = "#a6cee3", 'logical' = "#1f78b4", "#b2df8a")
  }
}
options(fill_by = fill_by(mode))
getOption('fill_by', function(x){return("#b2df8a")})(1)

## ------------------------------------------------------------------------
a_list <- make_block(list(x = 1:2, y = LETTERS[1:4], z = c(T, F)))
display(a_list, show_indices = T)

