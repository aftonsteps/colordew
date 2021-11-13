#' Discrete colordew scales to be used for ggplot2 fill
#'
#' @rdname ggplot2-scales-discrete
#' @param ... additional arguments to pass to discrete_scale()
#' @inheritParams colordew_palette
#'
#' @export
#' @examples
#' library(ggplot2)
#' days_in_winter_seeds <-
#'    data.frame(stage = c("stage1", "stage2", "stage3"),
#'               days = c(3, 4, 7))
#' ggplot(days_in_winter_seeds, aes(x = stage, y = days, color = stage)) +
#'    geom_bar(stat = "identity", fill = "white") +
#'    scale_color_colordew_d("winter")
scale_color_colordew_d <- function(name, direction = 1, ...) {
  ggplot2::discrete_scale("color", scale_name = name,
                          pal_fun(name = name, direction = direction), ...)
}

#' Discrete colordew scales to be used for ggplot2 color
#'
#' @rdname ggplot2-scales-discrete
#' @param ... additional arguments to pass to discrete_scale()
#' @inheritParams colordew_palette
#'
#' @export
#' @examples
#' library(ggplot2)
#' days_in_winter_seeds <-
#'    data.frame(stage = c("stage1", "stage2", "stage3"),
#'               days = c(3, 4, 7))
#' ggplot(days_in_winter_seeds, aes(x = stage, y = days, fill = stage)) +
#'    geom_bar(stat = "identity") +
#'    scale_fill_colordew_d("winter")
scale_fill_colordew_d <- function(name, direction=1, ...) {
  ggplot2::discrete_scale("fill", scale_name = name,
                          pal_fun(name = name, direction = direction), ...)
}

#' Continuous colordew scales to be used for ggplot2 color
#'
#' @rdname ggplot2-scales-discrete
#' @param ... additional arguments to pass to continuous_scale()
#' @inheritParams colordew_palette
#'
#' @export
#' @examples
#' library(ggplot2)
#' days_in_winter_seeds <-
#'   data.frame(stage = c(1, 2, 3),
#'              cumulative_days = c(3, 7, 14))
#' ggplot(days_in_winter_seeds, aes(x = stage, y = cumulative_days, color = stage)) +
#'   geom_line() +
#'   scale_color_colordew_c("winter")
scale_color_colordew_c <- function(name, direction=1, ...) {
  ggplot2::scale_color_gradientn(colors =
                                  colordew_palette(name = name,
                                                   direction = direction,
                                                   n = 256,
                                                   type = "continuous"), ...)
}

#' Continuous colordew scales to be used for ggplot2 fill
#'
#' @rdname ggplot2-scales-discrete
#' @param ... additional arguments to pass to continuous_scale()
#' @inheritParams colordew_palette
#'
#' @export
#' @examples
#' days_in_winter_seeds <-
#'   data.frame(stage = c(1, 2, 3),
#'              cumulative_days = c(3, 7, 14))
#' ggplot(days_in_winter_seeds, aes(x = stage,
#'                                  y = cumulative_days,
#'                                  fill = stage)) +
#'  geom_point(shape = 22) +
#'  scale_fill_colordew_c("winter")
scale_fill_colordew_c <- function(name, direction=1, ...) {
  ggplot2::scale_fill_gradientn(colors =
                                 colordew_palette(name = name,
                                                  direction = direction,
                                                  n = 256,
                                                  type = "continuous"), ...)
}

#' @export
scale_colour_colordew_d <- scale_color_colordew_d

#' @export
scale_colour_colordew_c <- scale_color_colordew_c
