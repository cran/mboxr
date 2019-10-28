## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE--------------------------------------------------------------
#  if(!require(remotes)) {
#  install.packages("remotes")
#  }
#  
#  remotes::install_github("jooyoungseo/mboxr")

## ---- eval=FALSE--------------------------------------------------------------
#  install.packages('mboxr')

## ----test, eval=FALSE---------------------------------------------------------
#  library(mboxr)
#  # Importing your mbox file into an R:
#  test <- system.file("extdata", "test1.mbox", package = "mboxr")
#  data <- read_mbox(test)
#  data
#  #> # A tibble: 2 x 6
#  #>   date                from      to         cc    subject  content
#  #>   <dttm>              <chr>     <chr>      <chr> <chr>    <chr>
#  #> 1 2011-07-08 12:08:34 Author <~ Recipient~ <NA>  Sample ~ "This is the bod~
#  #> 2 2011-07-08 12:08:34 Author <~ Recipient~ <NA>  Sample ~ "This is the sec~
#  
#  # Or, you can save your mbox file as an RDS file while assigning a tibble variable at the same time like below:
#  data <- read_mbox(mbox = test, file = "output.rds")
#  data
#  #> # A tibble: 2 x 6
#  #>   date                from      to         cc    subject  content
#  #>   <dttm>              <chr>     <chr>      <chr> <chr>    <chr>
#  #> 1 2011-07-08 12:08:34 Author <~ Recipient~ <NA>  Sample ~ "This is the bod~
#  #> 2 2011-07-08 12:08:34 Author <~ Recipient~ <NA>  Sample ~ "This is the sec~
#  
#  # You can merge all mbox files in your current directory or in any specified path into one tibble and save as an RDS file for the integrated one:
#  test_path <- system.file("extdata", package = "mboxr")
#  all_data <- merge_mbox_all(path = test_path, file = "all_merged_mbox.rds")
#  ## Find your "output.rds" file saved in your working directory while freely using the imported tibble in your R session!
#  
#  all_data
#  #> # A tibble: 4 x 6
#  #>   date                from      to         cc    subject   content
#  #>   <dttm>              <chr>     <chr>      <chr> <chr>     <chr>
#  #> 1 2011-07-08 12:08:34 Author <~ Recipient~ <NA>  Sample m~ "This is the bo~
#  #> 2 2011-07-08 12:08:34 Author <~ Recipient~ <NA>  Sample m~ "This is the se~
#  #> 3 2011-07-09 12:09:35 Author <~ Recipient~ <NA>  Another ~ "R is the best!~
#  #> 4 2011-07-10 10:03:32 Author <~ Recipient~ <NA>  The last~ "This is the la~

