fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "month", label = "Select a month", choices = unique(airquality$Month)),
      selectInput(inputId = "column", label = "Select a month", choices = c("Wind", "Temp"))
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Data", DTOutput("datatable1")),
        tabPanel("Plot", plotOutput("plot1"))
      )
    )
  )
)