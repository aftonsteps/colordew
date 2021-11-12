test_that("number of colors per palette is at least 4", {
  for (i in 1:length(colordew_palettes)) {
    expect_true(length(colordew_palettes[[i]]) >= 4)
  }
})

test_that("palettes can all be successfully generated", {
  for (i in 1:length(colordew_palettes)) {
    expect_silent(colordew_palette(name = names(colordew_palettes)[i]))
  }
})

test_that("discrete fill works", {
  test_data <- data.frame(x=c("a","b","c","d"),
                          y=seq(1,4))
  for (i in 1:length(colordew_palettes)) {
    expect_silent(ggplot2::ggplot(data = test_data,
                                  mapping = ggplot2::aes(x=x,y=y,fill=x))+
                    ggplot2::geom_bar(stat="identity") +
                    scale_fill_colordew_d(name=names(colordew_palettes)[i]))

  }
})

test_that("discrete color works", {
  test_data <- data.frame(x=c("a","b","c","d"),
                          y=seq(1,4))
  for (i in 1:length(colordew_palettes)) {
    expect_silent(ggplot2::ggplot(data = test_data,
                                  mapping = ggplot2::aes(x=x,y=y,color=x))+
                    ggplot2::geom_bar(stat="identity") +
                    scale_color_colordew_d(name=names(colordew_palettes)[i]))

  }
})

test_that("continuous color works", {
  test_data <- data.frame(x=seq(1,4),
                          y=seq(1,4))
  for (i in 1:length(colordew_palettes)) {
    expect_silent(ggplot2::ggplot(data = test_data,
                                  mapping = ggplot2::aes(x=x,y=y,color=x))+
                    ggplot2::geom_line() +
                    scale_color_colordew_c(name=names(colordew_palettes)[i]))

  }
})

