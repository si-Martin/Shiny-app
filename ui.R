library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Mtcars dataset - data & some plots"),
  sidebarPanel(
    checkboxGroupInput("id1", "Build a plot",
            c("Plot mpg vs. wt" = "2", 
            "Show #gears" = "3",
            "Show mtcars dataset" = "1"
            ))
    
  ),
  mainPanel(
    plotOutput('plotXY'),
    dataTableOutput('mytable')
  )
))
