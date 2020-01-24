replace.na.nan.neg.null.inf <-
function (x, replace, ...) {
  return(
    na.replace(
      nan.replace(
        negative.replace(
          null.replace(
            infinite.replace(x,replace),replace
          ),replace
        ),replace
      ),replace
    )
  )
}
