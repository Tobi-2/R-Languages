library(datasets)
library(shiny)
library(shinydashboard)
library(ggplot2)
library(ggplotify)

mubarak<-read.csv("healthdata.csv")
ui<-dashboardPage(
                  dashboardHeader(title = "HealthCare"),
                  dashboardSidebar(
                    sidebarMenu(
                      menuItem("age", tabName = "Age", icon = icon ("car")),
                      menuItem("Bmi", tabName = "Bmi", icon = icon ("tree")),
                      menuItem("Avrglu", tabName = "Average glocose", icon = icon ("th")),
                      menuItem("Hypert", tabName = "hypertension", icon = icon("table"))
                                      
                                    ) ##sidebarmenu
                    ), ##dashboardsidebar
                  dashboardBody(
                    tabItems(
                      tabItem("Age",
                              box(plotOutput("Myhist"), width=8)),
                      tabItem("Bmi",
                              box(plotOutput("Myhist1")
                                                    )),
                      tabItem("Average glocose",
                              box(plotOutput("Myhist2")
                                                    )),
                      tabItem("hypertension",
                              box(plotOutput("Myhist3")
                                                    ))
                                        ) ##tabitems
                                    ) ##dashboardbody
                                  ) ##dashboardpage
server<-function(input,output){
  output$Myhist<-renderPlot({
    hist(mubarak$age)
  })
  
  output$Myhist1<-renderPlot({
    boxplot(mubarak$bmi)
})
  
  output$Myhist2<-renderPlot({
    hist(mubarak$avg_glucose_level)  
    })
  
  output$Myhist3<-renderPlot({
    hist(mubarak$hypertension)
  })
}
shinyApp(ui, server)