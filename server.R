calculateBMI <- function(weight, height) {
  return((weight / (height * height)) * 703)
}

bmiToLabel <- function(bmi) {
 
  if(bmi < 18.5) {
    return("Underweight")
  }
  else if(bmi < 25) {
    return("Normal weight")
  }
  else if(bmi < 30) {
    return("Overweight")
  }
  else {
    return("Obese")
  }
}



shinyServer(
  function(input, output) {
    output$weight <- renderPrint({input$weight})
    output$height <- renderPrint({input$height})
    output$bmi <- renderPrint({calculateBMI(input$weight, input$height)})
    output$label <- renderPrint({bmiToLabel(calculateBMI(input$weight, input$height))})
  }
)