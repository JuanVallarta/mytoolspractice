# WARNING - Generated by {fusen} from /dev/flat_minimal.Rmd: do not edit by hand

#' Get_mean_data
#' 
#' Will get a table with the average of all numeric variables in your dataset as parameter.

#' @return table
#' @export 
#' @importFrom magrittr %>% 
#' @importFrom dplyr summarise_if
#' @examples
#' get_mean_data(data = iris)
get_mean_data <- function(data){
  
  is_not_numeric <- all(!sapply(data, is.numeric))
  if(is_not_numeric){
    stop("Your data has no numeric variables")
  } else {
    result <- data %>%
    summarise_if(is.numeric, mean, na.rm = TRUE)
    return(result)
  }
  

}
