
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = input$colour, border = 'white')

  })

  output$sampleMeanValue <- renderText({
    input$sampleMean
    res <- mean(sample(faithful[, 1], size= 10, prob = faithful[, 2]/ sum(faithful[, 2])))

  })
})
