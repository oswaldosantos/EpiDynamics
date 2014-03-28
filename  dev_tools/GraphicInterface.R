#' Graphic interface to use EpiDynamics functions
#' @export
#' 
#' @examples
#' shinyApps('midha2.1')
#' 
GraphicInterface <- function(function.name = NULL) {
  runApp(paste0(system.file('shinyApps/', package='EpiDynamics'), function.name))
}