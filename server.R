library(shiny)

calculateCalories <- function(distance, weight) {
  resultText = "Please enter the distance you run and your weight in left panel."
  if (distance>0 & weight>0) {
     result = distance * weight * 0.7568
     resultText = paste0("Nice work! You have burned ", round(result, digits=1), " calories")
  }
  return (resultText)
}

shinyServer(function(input, output) {
  output$result <- renderText({ 
    input$goButton
    isolate(calculateCalories(input$distance, input$weight))
  })
})
