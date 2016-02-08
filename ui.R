
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinythemes)

shinyUI(fluidPage(
  theme = shinytheme("cerulean"),
  
  # Application title
  titlePanel("First try at a Shiny App"),

  fluidRow(
    column(width = 5,
           sliderInput("bins",
                "Number of bins:",
                min = 1,
                max = 50,
                value = 30)),
    column(width =5,
           selectInput("colour",
                "Histogram colour:",
                list(Grey = "darkgrey",
                     Green = "darkgreen",
                     Red = "red",
                     Yellow = "yellow",
                     Blue = "blue")))
  ),

  # Show a plot of the generated distribution
  fluidRow(
    plotOutput("distPlot")
  ),
  
  actionButton("sampleMean",
               "Take a random sample and then find the mean:"),
  textOutput("sampleMeanValue", inline = TRUE)
))
