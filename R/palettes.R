#' Colordew Palette
#'
#' Returns a named color palette from `colordew`
#'
#' @param name name of the desired palette
#' @param n number of points to include in the palette
#' @param direction either -1 or 1, where if -1 the palette will be reversed
#' @param type either "continuous" or "discrete," where "continuous" will automatically
#' interpolate between colors
#'
#' @return a vector of colors of length n
#' @export
#' @keywords colors
#' @examples
#' colordew_palette("winter")
colordew_palette <- function(name,
                             n,
                             direction=1,
                             type = c("discrete", "continuous")) {
  if (abs(direction) != 1) {
    stop("Direction must be -1 or 1")
  }

  type <- match.arg(type)

  pal <- colordew_palettes[[name]]

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of specified colors is greater than the length of the palette, which is ",
         length(pal), ".")
  }

  out <- switch(type,
                continuous = colorRampPalette(pal)(n),
                discrete = pal[1:n])

  if (direction == -1) {
    out <- rev(out)
  }

  prismatic::color(out)
}

#' @export
colourdew_palette <- colordew_palette


pal_fun <- function(name, direction) {
  function(n) {
    colordew_palette(name = name, direction = direction)
  }
}
