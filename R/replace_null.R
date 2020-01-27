#' Replace NULL values
#' @param x data to be searched for NULL values that should be replaced
#' @param replace the data to replace with
#' @return x data with all NULL values replaced
#' @examples
#' replace_null(c(NULL,-49:48,Inf))
#' @export
replace_null <-
function (x, replace=0, ...) {
  if (is.function(replace)) 
    replace <- replace(x, ...)
  x[is.null(x)] <- replace
  x
}
