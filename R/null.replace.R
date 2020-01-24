null.replace <-
function (x, replace, ...) {
  if (is.function(replace)) 
    replace <- replace(x, ...)
  x[is.null(x)] <- replace
  x
}
