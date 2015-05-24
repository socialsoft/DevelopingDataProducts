library(shiny)

fluidPage(
  
  titlePanel("Calories Burned Calculator for Running"),
  
  sidebarPanel(
    
    numericInput(inputId="distance", label="Distance you run in miles", value= 0,min=0),
    numericInput(inputId="weight", label="Your weight in pounds", value= 0,min=0),
    actionButton("goButton", "CALCULATE")
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel('Your Result', p(""),
        textOutput("result")
      ),
      tabPanel('Documentation', p(""),
        p("There are many calorie calculators out there for all different activities, but this one is built specifically for running"),
        p("Using this tool is simple. As shown in the left panel, you only need to enter the distance you run (in miles) and your weight (in pounds). When you click the CALCULATE button, our powerful 128-core cloud server will use a secret, patent pending formula to calculate the total calories you burned and show the result to you in less than a second.")
      ),
      tabPanel('Source Code', p(""),
        p(strong(em("Github repository:",a("Developing Data Products",href="https://github.com/socialsoft/DevelopingDataProducts"))))       
      )
    )
  )
)
