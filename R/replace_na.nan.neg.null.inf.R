#' Replace occurances of any NA,NaN,Negative,NULL, or Inf  found in data
#' @param replace_* convienence wrappers for various replace invalid numeric data
#' @return x
#' @examples
#' test.err.a <-c(-1/0,-49:48,-Inf)
#' test.err.b <-c(sqrt(-12),-49:49)
#' test.all <- replace_na.nan.neg.null.inf(rbind(test.err.a,test.err.b),0)
#' @keywords replace
#' @export
replace_na.nan.neg.null.inf <-
function (x, replace=0, ...) {
  return(
    replace_na(
      replace_nan(
        replace_negative(
          replace_null(
            replace_infinite(x,replace),replace
          ),replace
        ),replace
      ),replace
    )
  )
}
