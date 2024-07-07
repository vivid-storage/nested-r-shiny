library(shiny)

# Define the UI for the application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Volcano Shiny App"),
  
  # Sidebar layout with input and output definitions
  sidebarLayout(
    sidebarPanel(
      # Input: Numeric input for the number of bins
      numericInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
