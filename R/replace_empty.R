#' Replace characters of 0 length
#' @param x data to be searched for characters of 0 length that should be replaced
#' @param replace the data to replace with
#' @return x data with all NA values replaced
#' @examples
#' replace_null(NULL,-49:48,NA)
#' @keywords replace
#' @export
replace_empty <-
function (x, replace=0, ...) {
  if (is.function(replace)) 
    replace <- replace(x, ...)
  x[(nchar(x)==0)] <- replace
  x
}
