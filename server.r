#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
library(ggplot2)

auto<-read.csv("Auto.csv",header=TRUE)

# Define server logic required to draw a scatterplot
shinyServer(function(input, output) {

    output$scatterPlot <- renderPlot({
        ggplot(data=filter(auto,cylinders==input$cylinders),aes(x=as.numeric(mpg),y=as.numeric(horsepower)))+geom_point(aes(color=input$cylinders),size=2)+scale_x_continuous(trans='log10')+scale_y_continuous(trans='log10')

    })

})
