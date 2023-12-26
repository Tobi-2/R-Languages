# import shiny package
library(shiny)

# define fluid page layout
ui <- fluidPage(
  sliderInput(inputId = "num",
              label = "Choose a number",
              value = 10, min = 1, max = 1000),
  plotOutput("hist")
)

server <- function(input, output)
{
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
}

# create shiny app object
# using shinyApp
shinyApp(ui = ui, server = server)
