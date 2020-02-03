#' Replace NA values with
#' @param x data to be searched for NA values that should be replaced
#' @param replace the data to replace with
#' @return x data with all NA values replaced
#' @examples
#' replace_null(c(NULL,-49:48),NA)
#' @export
replace_na <-
function (x, replace=0, ...) {
  if (is.function(replace)) 
    replace <- replace(x, ...)
  x[is.na(x)] <- replace
  x
}
