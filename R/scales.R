## TODO docs
scale_color_colordew_d <- function(name, direction = 1, ...) {
  ggplot2::discrete_scale("color", scale_name = name,
                          pal_fun(name = name, direction = direction), ...)
}

scale_fill_colordew_d <- function(name, direction=1, ...) {
  ggplot2::discrete_scale("fill", scale_name = name,
                          pal_fun(name = name, direction = direction), ...)
}

scale_color_colordew_c <- function(name, direction=1, ...) {
  ggplot2::scale_color_gradientn(colors =
                                  colordew_palette(name = name,
                                                   direction = direction,
                                                   n = 256,
                                                   type = "continuous"), ...)
}

scale_fill_colordew_c <- function(name, direction=1, ...) {
  ggplot2::scale_fill_gradientn(colors =
                                 colordew_palette(name = name,
                                                  direction = direction,
                                                  n = 256,
                                                  type = "continuous"), ...)
}

## TODO add exports for colour vs. color :)
