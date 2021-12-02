#' A ggplot Theme Function
#'
#' This function adds a theme to ggplots
#' @param Theme used to display ggplots
#' @keywords Theme
#' @export
#' @examples
#' theme_Amelia()


theme_Amelia <- function(...){

  ggplot2::theme_classic() + # remove grid & background colour
              ggplot2::theme(panel.border = ggplot2::element_rect(colour = "black", fill=NA, size=1))
}
