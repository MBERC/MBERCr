#' Colour Functions
#'
#' These function add colours to add to ggplot scales
#' @param Colours used to create ggplot scales
#' @keywords Colours Palettes
#' @export
#' @examples
#' Bede_colours()
#' Bede_cols()
#' Bede_Palettes()
#' Bede_pal()

Bede_colours <- c(
  `red`        = "#bd1c1c",
  `green`      = "#38ab07",
  `blue`       = "#0058db",
  `orange`     = "#e3950e",
  `yellow`     = "#fce517",
  `light grey` = "#cccccc",
  `dark grey`  = "#545454",
  `dark cyan`  = "#008b8b",
  `dark purple`= "#3e0269",
  `light blue` = "#b5f6ff",
  `dark blue`  = "#0e1296",
  `dark gold`  = "#e86a28",
  `dark sea blue` = "#0f3d64",
  `Mussels Rope` = "#002673",
  `Mussels Control` = "#a90000",
  `Orkney RN` = "#56bda2",
  `Orkney RS` = "#dbb13b",
  `Orkney WC` = "#2494a2",
  `BathyBlue0`="#c6edec",
  `BathyBlue1`="#9ddee7",
  `BathyBlue2`="#72d0e1",
  `BathyBlue3`="#48b5d2",
  `BathyBlue4`="#218eb7",
  `BathyBlue5`="#1074a6",
  `BathyBlue6`="#054780",
  `BathyBlue7`="#042f66",
  `BathyBlue8`="#22496d",
  `BathyBlue9`="#5e24d6"
)

Bede_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (Bede_colours)

  Bede_colours[cols]
}

Bede_palettes <- list(
  `main`  = Bede_cols("dark blue","dark cyan", "yellow"),

  `cool`  = Bede_cols("blue", "green"),

  `hot`   = Bede_cols("yellow", "orange", "red"),

  `mixed` = Bede_cols("dark cyan", "green", "yellow", "orange", "red"),

  `grey`  = Bede_cols("light grey", "dark grey"),

  `Mussels`= Bede_cols("Mussels Rope","Mussels Control"),

  `bathy` = Bede_cols("light blue","dark cyan", "dark blue", "dark purple"),

  `PhD` = Bede_cols("dark cyan", "light grey", "dark gold"),

  `Orkney` = Bede_cols("Orkney RN", "Orkney RS", "Orkney WC"),

  `Bathy_Blues`= Bede_cols("BathyBlue0","BathyBlue1","BathyBlue2",
                           "BathyBlue3","BathyBlue4","BathyBlue5",
                           "BathyBlue6","BathyBlue7","BathyBlue8",
                           "BathyBlue9")
)

Bede_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- Bede_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)

  }

Amelia_colours <- c(
  `green`        = "#1b9e77",
  `orange`      = "#d95f02",
  `purple`       = "#7570b3"
)

Amelia_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (Amelia_colours)

  Amelia_colours[cols]
}

Amelia_palettes <- list(
  `PhD`  = Amelia_cols("green","orange", "purple")

)

Amelia_pal <- function(palette = "PhD", reverse = FALSE, ...) {
  pal <- Amelia_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)

}

Clara_colours <- c(
  `Pal1_1`        = "#2CCD1B",
  `Pal1_2`      = "#AFEEA8",
  `Pal1_3`        = "#5FD952",
  `Pal1_4`      = "#0F9D00",
  `Pal1_5`        = "#0A6600",
  `Pal2_1`      = "#FB6521",
  `Pal2_2`        = "#FFCCB5",
  `Pal2_3`      = "#FF9261",
  `Pal2_4`        = "#C03C00",
  `Pal2_5`      = "#7D2700",
  `Pal3_1`        = "#ACE0E5",
  `Pal3_2`      = "#6FC8D0",
  `Pal3_3`        = "#2EADB8",
  `Pal3_4`      = "#028A95",
  `Pal3_5`       = "#01626B",
  `Pal3_6`       = "#00383D"
)

Clara_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (Clara_colours)

  Clara_colours[cols]
}

Clara_palettes <- list(
  `Pal_1`  = Clara_cols("Pal1_1","Pal1_2", "Pal1_3","Pal1_4", "Pal1_5"),
  `Pal_2`  = Clara_cols("Pal2_1","Pal2_2", "Pal2_3","Pal2_4", "Pal2_5"),
  `Pal_3`  = Clara_cols("Pal3_1","Pal3_2", "Pal3_3","Pal3_4", "Pal3_5", "Pal3_6")
)

Clara_pal <- function(palette = "PhD", reverse = FALSE, ...) {
  pal <- Clara_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)

}

