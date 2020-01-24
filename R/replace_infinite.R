#' Replace infinate values
#' @param x data to be searched for Inf values that should be replaced
#' @param replace the data to replace with
#' @return x data with all Inf values replaced
#' @examples
#' replace_nan(-Inf,-49:48,Inf)
#' @export
replace_infinite <-
function (x, replace=0, ...) {
  if (is.function(replace)) 
    replace <- replace(x, ...)
  x[is.infinite(x)] <- replace
  x
}
