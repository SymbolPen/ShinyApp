library(shiny)
turnover <- function(adv, float) float / adv
shinyServer(
        function(input, output) {
                output$inputAdv <- renderPrint({input$Adv})
                output$inputFloat <- renderPrint({input$Float})
                output$Turnover <- renderPrint({turnover(input$Adv, input$Float)})
        }
)
