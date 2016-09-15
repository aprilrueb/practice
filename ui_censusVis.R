library(shiny)

shinyUI(fluidPage(
  titlePanel("censusVis"),
  
  shinyUI(fluidPage(
    
    sidebarLayout(position = "left",
                  sidebarPanel(h5("Create demographic maps with information from the 2010 US Census."),
                               selectInput("select", label = h5("Choose a variable to display"), 
                                           choices = list("Percent White" = 1, "Percent Black" = 2,
                                                          "Percent Hispanic" = 3, "Percent Asian" = 4)
                                          ), 
                               sliderInput("slider1", label = h5("Range of interest:"),
                                           min = 0, max = 100, value = c(0,100)
                                           )
                  ),
                  mainPanel()
    )
  ))

))
