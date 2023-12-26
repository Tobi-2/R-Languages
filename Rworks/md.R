library(shiny)
library(shinydashboard)
library(graphics)
library(DT)
steve<-read.table("steve.txt", header = T, sep = ",")

ui<-dashboardPage(
  dashboardHeader(title = "dassh board"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("chart", tabName = "chart", icon("tree")),
      menuItem("Data", tabName = "Datatable", icon("table")),
      menuItem("Hist", tabName = "Histogram", icon("car"))
    )),
  dashboardBody(
    tabItems(
      tabItem("chart",
              box(plotOutput("Myplot"), width = 8),
              box(
                selectInput("Features", "Features:",
                            c("WT..KG.","GA.WKS.","AGE")))
      )),
    tabItem("Datatable",
            fluidPage(
              h1("Datatable"),
              dataTableOutput("steve")
            )),
    tabItem("Histogram",
            box(plotOutput("Myhist"), width = 8),
    )
  )
)
server<-function(input,output){
  output$Myplot<-renderPlot({
    plot(steve$HT..m.,steve[[input$Features]],
         xlab = "Heigth", ylab = steve$Features)
  })
  output$steve<-renderDataTable(steve)
  output$Myhist<-renderPlot({
    hist(steve$AGE..YRS.)
  })
}
shinyApp(ui, server)