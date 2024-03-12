#' maggie_says
#'
#' @param says the string that you want maggie to say
#'
#' @return a printed statement that maggie says
#' @export
#'
#' @examples
#' maggie_says('hi')
maggie_says <- function(says){
  print(paste0('Maggie says ', says))
}

#' @importFrom rlang .data
NULL

#' get_words
#'
#'
#' @return the first choice of words
#' @export
#'
#' @examples
#' get_words()
get_words <- function(){
  file <- system.file('extdata', 'data.csv',package = 'demo.maggie', mustWork = T)
  data.table::fread(file) |> dplyr::distinct(words)
}
