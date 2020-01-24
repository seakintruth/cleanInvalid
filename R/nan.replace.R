nan.replace <-
function (x, replace, ...) {
  if (is.function(replace)) 
    replace <- replace(x, ...)
  x[is.nan(x)] <- replace
  x
}
