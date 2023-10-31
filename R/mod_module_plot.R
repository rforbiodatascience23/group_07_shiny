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

    sidebarLayout(
      sidebarPanel(
        textAreaInput(
          inputId = ns("peptide"),
          label = "Peptide sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      mainPanel(
        plotOutput(
          outputId = ns("abundance")
        )
      )
    )

  )
}

#' module_plot Server Functions
#'
#' @noRd
#' @import ggplot2
#' @import dogma7
mod_module_plot_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

    output$abundance <- renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide |>
          dogma7::barplot_unique_chars() +
          ggplot2::theme(legend.position = "none")
      }
    })

  })
}

## To be copied in the UI
# mod_module_plot_ui("module_plot_1")

## To be copied in the server
# mod_module_plot_server("module_plot_1")
