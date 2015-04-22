####################################################################
#
# Data Science Capstone: The Next Word Predictor

#library(shiny)
#library(tm)

# ngram table loader script
source("ngram_tableloader.R")

# tokenanalyzer script
source("tokenanalyzer.R")


shinyServer(function(input, output) {
        # You can access the value of the widget with input$text, e.g.
        output$text <- renderPrint({ input$text })
        
        # You can access the value of the widget with input$action, e.g.
        #output$submit <- renderPrint({ input$action })
                      
              #ake input and use it to predict
             
              
        output$text2 <- renderText({                             
                
                string.predict2(input$text)
        })
        
})
