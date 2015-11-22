library(shiny)
library(datasets)

# Data preparation
data(mtcars)
mtcars$vendor <- gsub( " .*$", "", rownames(mtcars))

shinyServer(function(input, output) {
      # Drop-down selection box for which vendor
      output$vendorselect <- renderUI({
            selectInput("vendor", "Vendor", choices = as.character(mtcars$vendor), selected = mtcars$vendor)
      })
      
      # Drop-down selection for which feature
      output$featureselect <- renderUI({
            features <- names(mtcars)
            features <- features[1:length(features)-1]
            selectInput("feature", "Choose feature", as.list(features))
      })

       # Print the selected vendor
       output$vendor <- renderText({
             paste("You have selected",input$vendor,"as the car vendor.")
       })
       
       # Print the selected feature
       output$feature <- renderText({
             paste("You have selected the following feature:",input$feature)
       })
       
       # Calculate the mean of the selected feature
       output$mean <- renderText({
             data <- mtcars[mtcars$vendor==input$vendor,input$feature]
             data2 <- mtcars[,input$feature]
             paste("The average",input$feature,"for",input$vendor,"cars is",print(mean(data)),
             "The global average", input$feature, "is", print(mean(data2)))
      })
       
       # Show available data for this particular vendor
       output$tabletext <- renderText({
             paste("The mtcars data for the car vendor you selected:")
       })
       
       output$view <- renderTable({
             print(mtcars[mtcars$vendor==input$vendor, 1:11])
       })

})