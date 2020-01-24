negative.replace <-
function (x, replace, ...) {
  if (is.function(replace)) 
    replace <- replace(x, ...)
  x[(x<0)] <- replace
  x
}
