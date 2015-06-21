library(shiny)

shinyServer(
  function(input, output) {
    
    carsMP <- mtcars
    carsMP$type <- row.names(mtcars)
    library(ggplot2)
    gr <- qplot(mpg, wt, data=mtcars, color=factor(gear)) + 
      ggtitle("Miles per galon in comparison with weight")+
      xlab("Miles per galon") +
      ylab("Weight")
    
    gr1 <- qplot(mpg, wt, data=mtcars) + 
      ggtitle("Miles per galon in comparison with weight")+
      xlab("Miles per galon") +
      ylab("Weight")
    
    #checkList <- input$id1
    
    output$mytable <- renderDataTable({
           
        if (1 %in% input$id1) carsMP

    })
    
    output$plotXY <- renderPlot({
      #if (length(input$id1) == 3) print(gr)  
      if (2 %in% input$id1) print(gr1)
      if (3 %in% input$id1) print(gr)
    })
  
    
  }
)

