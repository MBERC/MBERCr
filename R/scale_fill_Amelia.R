#' Scale Fill Functions
#'
#' These function add colours to add to ggplot fill scales
#' @param fills used to create ggplot scales
#' @keywords Fills Palettes
#' @export
#' @examples
#' scale_fill_Amelia()

scale_fill_Amelia <- function(palette = "PhD", discrete = TRUE, reverse = FALSE, ...) {
  pal <- Amelia_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("Amelia_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
