#' Replace occurances of any empty, NA, NaN, NULL, or Inf  found in data
#' @param replace_* convienence wrappers for various replace invalid numeric data
#' @return x
#' @examples
#' test.err.a <-c(-1/0,-49:48,-Inf)
#' test.err.b <-c(sqrt(-12),-49:48,"")
#' test.all <- replace_empty.na.nan.null.inf(rbind(test.err.a,test.err.b),0)
#' 
#' @keywords replace
#' @export
replace_empty.na.nan.null.inf <-
function (x, replace=0, ...) {
  return(
    replace_na(
      replace_nan(
        replace_empty(
          replace_null(
            replace_infinite(x,replace),replace
          ),replace
        ),replace
      ),replace
    )
  )
}
