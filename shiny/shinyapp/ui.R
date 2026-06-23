library(shiny)
library(shinydashboard)


ui <- dashboardPage(
  dashboardHeader(title = "Composition d'équipe"),
  
  dashboardSidebar(
    sidebarMenu(
      selectInput(
        inputId = "map",
        label = "Choisir une carte",
        choices = c(
          "Corrode",
          "Abyss",
          "Sunset",
          "Lotus",
          "Pearl",
          "Fracture",
          "Breeze",
          "Icebox",
          "Ascent",
          "Split",
          "Haven",
          "Bind"
        )
      ),
      
      selectInput(
        inputId = "year",
        label = "Choisir une année",
        choices = 2021:2026,
        selected = 2026
      )
    )
  ),
  
  dashboardBody(
    fluidRow(
      box(
        width = 12,
        plotOutput("agents_plot", height = 500)
      )
    )
  )
)