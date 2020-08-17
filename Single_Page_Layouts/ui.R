fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "month", label = "Select a month", choices = unique(airquality$Month)),
      selectInput(inputId = "column", label = "Select a column", choices = c("Wind", "Temp"))
    ),
    mainPanel(
      fluidRow(
        column(width = 6,
               DTOutput(outputId = "datatable1")
        ),
        column(width = 6,
               plotOutput("plot1")
               )
      )
    )
    
  )
)