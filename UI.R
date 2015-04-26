library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI Calculator"),
    sidebarPanel(
      h5('Enter your weight and height in lb/ft'),
      numericInput('weight', 'Weight lb',50, min = 50, max = 200, step = 5),
      numericInput('height', 'Height ft',100, min = 20, max = 300, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h5('Body Mass Index (BMI) is a calculation the medical world uses as an indicator of overall health. The general classification is: '),
      tags$ul(
        tags$li("Underweight: < 18.5"), 
        tags$li("Normal weight: 18.5 - 24.9"), 
        tags$li("Overweight: 25 - 29.9"),
        tags$li("Obese: >= 30"),
        tags$li("Extremely Obese: >= 40")
      ),
      h5('Your weight'),
      verbatimTextOutput("weight"),
      h5('Your height'),
      verbatimTextOutput("height"),
      h5('Your Calculated BMI '),
      verbatimTextOutput("bmi"),
      h5('Your BMI is in the following classification'),
      verbatimTextOutput("label")
    )
  )
)
