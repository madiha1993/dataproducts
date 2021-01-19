#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
#auto<-read.csv("Auto.csv",header=TRUE)

# Define UI for application that draws a scatterplot
shinyUI(fluidPage(
    
    # Application title
    titlePanel("MPG VS HORSEPOWER"),
    
    # show plot for different number of cylinders between mpg and horsepower
    selectInput("cylinders",
                "select number of cylinders",
                choices=list(3,4,5,6,8)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        plotOutput("scatterPlot")
    )
)
)
