#' module_plot UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module_plot_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' module_plot Server Functions
#'
#' @noRd 
mod_module_plot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_module_plot_ui("module_plot_1")
    
## To be copied in the server
# mod_module_plot_server("module_plot_1")