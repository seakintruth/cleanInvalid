#' Replace negative values
#' @param x data to be searched for negative values that should be replaced
#' @param replace the data to replace with
#' @return x data with all negative values replaced
#' @examples
#' replace_negative((-50:49),0)
#' replace_negative(matrix(-50:49,10,10),0)
#' @export
replace_negative <-
function (x, replace=0, ...) {
  if (is.function(replace)) 
    replace <- replace(x, ...)
  x[(x<0)] <- replace
  x
}
