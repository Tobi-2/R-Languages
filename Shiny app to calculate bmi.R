# Download the dataset from Kaggle
# Install and load necessary packages
if (!require(shiny)) install.packages("shiny")
if (!require(dplyr)) install.packages("dplyr")

library(shiny)
library(dplyr)

# UI
ui <- fluidPage(
  titlePanel("BMI Calculator and Weight Predictor"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("height", "Enter Height (in meters):", value = 1.75, min = 0, max = 3),
      actionButton("calculate_bmi", "Calculate BMI"),
      br(),
      numericInput("weight_pred_height", "Enter Height for Weight Prediction (in meters):", value = 1.75, min = 0, max = 3),
      actionButton("predict_weight", "Predict Weight"),
      br(),
      textOutput("weight_prediction")
    ),
    
    mainPanel(
      plotOutput("bmi_plot")
    )
  )
)

# Server
server <- function(input, output) {
  
  # Function to calculate BMI
  calculate_bmi <- function(height) {
    bmi <- height^(-2)
    return(bmi)
  }
  
  # Function to predict weight
  predict_weight <- function(height) {
    # Assume a simple linear relationship for weight and height
    weight <- 70 * height
    return(weight)
  }
  
  # Event handlers
  
  # Calculate BMI
  observeEvent(input$calculate_bmi, {
    bmi <- calculate_bmi(input$height)
    updateNumericInput(session, "bmi", value = bmi)
  })
  
  # Predict weight
  observeEvent(input$predict_weight, {
    weight_pred <- predict_weight(input$weight_pred_height)
    output$weight_prediction <- renderText(paste("Predicted Weight: ", round(weight_pred, 2), " kg"))
  })
  
  # Plot BMI
  output$bmi_plot <- renderPlot({
    hist(calculate_bmi(input$height), main = "BMI Distribution", xlab = "BMI", col = "skyblue", border = "black")
  })
}

# Run the application
shinyApp(ui, server)

