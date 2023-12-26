library(shiny)
library(shinythemes)
library(DT)
library(readr)
loan_approval<- read.csv("train.csv")

# Define UI
ui <- fluidPage(theme = shinytheme("united"),
                navbarPage(
                  "LOAN APPROVAL PREDICTION",
                  tabPanel("TEST",
                           sliderInput("ApplicantIncome",
                                       label = "Income", 
                                       value = 20, 
                                       min = 150, 
                                       max = 81000
                                       ), # sidebarPanel
                           sliderInput("CoapplicantIncome",
                                       label = "coletrral", 
                                       value = 2, 
                                       min = 1, 
                                       max = 41667
                                       ),
                           sliderInput("LoanAmount",
                                       label = "Income", 
                                       value = 3, 
                                       min = 1, 
                                       max = 41667
                                       ),
                           mainPanel(
                             h1("Header 1"),
                             
                             h4("Output 1"),
                             verbatimTextOutput("txtout"),
                             
                           ) # mainPanel
                           
                  ), # Navbar 1, tabPanel
                  tabPanel("Prediction Page",
                           ), # sidebarPanel
                           mainPanel(
                             h1("Header 1"),
                             
                             h4("Output 1"),
                             verbatimTextOutput("txtout"),
                             
                           )
                           ),
                  tabPanel("BMI PREDICTION",
                           sidebarPanel(
                             HTML("<h3>Input parameters</h3>"),
                             sliderInput("height", 
                                         label = "Height", 
                                         value = 175, 
                                         min = 40, 
                                         max = 250),
                             sliderInput("weight", 
                                         label = "Weight", 
                                         value = 70, 
                                         min = 20, 
                                         max = 100),
                             
                             actionButton("submitbutton", 
                                          "Submit", 
                                          class = "btn btn-primary")
                           ),
                            mainPanel(
                             tags$label(h3('Status/Output')), # Status/Output Text Box
                             verbatimTextOutput('contents'),
                             tableOutput('tabledata') # Results table
                           )
                           
                  
                ) # navbarPage
) # fluidPage


# Define server function  
server <- function(input, output) {
  
  output$txtout <- renderText({
    paste( input$txt1, input$txt2, sep = " " )
  })
  
  #BMI SEVER 
  
  datasetInput <- reactive({  
    bm <- input$weight/( (input$height/100) * (input$height/100) )
    bm <- data.frame(bm)
    names(bm) <- "BM"
    print(bm)
    
  })
  
  # Status/Output Text Box
  output$contents <- renderPrint({
    if (input$submitbutton>0) { 
      isolate("Calculation complete.") 
    } else {
      return("Server is ready for calculation.")
    }
  })
  
  # Prediction results table
  output$tabledata <- renderTable({
    if (input$submitbutton>0) { 
      isolate(datasetInput()) 
    } 
  })
} # server


# Create Shiny object
shinyApp(ui = ui, server = server)