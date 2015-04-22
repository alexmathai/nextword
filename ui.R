####################################################################
#
# Data Science Capstone: The Next Word Predictor

#library(shiny)

# ui.R

shinyUI(fluidPage(
        titlePanel("Data Science Specialization Capstone: Text Predictor"),
        
        sidebarLayout(
                sidebarPanel( 
                        h4("Project Info"),
                        br(),
                        br(),
                        h5("Author: Alex Mathai"),
                        br(),
                        p("This is my Next Word Predictor. It uses a Stupid Back-Off model. First it looks for a trigram, choosing the most likely. If no match is found it then applies the same logic to the bigrams and then unigrams."),
                        br(),
                        p("The table of Ngrams was built from a 20% sample of the 3 sources files. Profane words were removed. ")
                        
                ),
                mainPanel(
                        h3("Text Predictor",align="center"),
                        br(),
                        br(),
                        textInput("text", label = h5("Enter sentence with last word missing:"), value = "Enter text here..."),
                        #actionButton("action", label = "Submit"),
                
                        br(),
                        br(),
                        h5("The next word is: "),
                        textOutput( "text2")
                        
                       
                        
                        
                )
                
        )
))

