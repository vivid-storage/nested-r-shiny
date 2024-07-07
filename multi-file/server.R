library(shiny)

# Define the server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    # Generate bins based on input$bins from ui.R
    x    <- faithful[, 2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # Draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white',
         main = 'Histogram of Eruptions',
         xlab = 'Eruption duration (minutes)')
  })
  
})
