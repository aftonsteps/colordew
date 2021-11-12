## TODO:  docs
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
  #structure(out, class = "palette", name = name)
}

## TODO: docs
pal_fun <- function(name, direction) {
  function(n) {
    colordew_palette(name = name, direction = direction)
  }
}

#' @export
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}
