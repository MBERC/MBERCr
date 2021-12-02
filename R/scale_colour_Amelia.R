#' Scale Colour Function
#'
#' This function add colours to add to ggplot scales
#' @param Colours used to create ggplot scales
#' @keywords Colours Palettes
#' @export
#' @examples
#' scale_colour_Amelia()

scale_colour_Amelia <- function(palette = "PhD", discrete = TRUE, reverse = FALSE, ...) {
  pal <- Amelia_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("Amelia_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_colour_gradientn(colours = pal(256), ...)
  }
}
