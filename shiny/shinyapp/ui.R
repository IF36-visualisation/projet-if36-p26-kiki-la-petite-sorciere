#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
          selectInput(
            inputId = "map",
            label = "Choisir une carte",
            choices = c(
              "All",
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
        ),

        mainPanel(
            plotOutput("agents_plot")
        )
    )
)
