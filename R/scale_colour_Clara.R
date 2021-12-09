#' Scale Colour Function
#'
#' This function add colours to add to ggplot scales
#' @param Colours used to create ggplot scales
#' @keywords Colours Palettes
#' @export
#' @examples
#' scale_colour_Clara()

scale_colour_Clara <- function(palette = "PhD", discrete = TRUE, reverse = FALSE, ...) {
  pal <- Clara_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("Clara_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_colour_gradientn(colours = pal(256), ...)
  }
}
