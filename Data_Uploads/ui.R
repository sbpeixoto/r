fluidPage(
  sidebarLayout(
    sidebarPanel(
      fileInput(inputId = "file1", label = "Upload a csv file:",
                multiple = FALSE,
                accept = c(".csv")),
      textInput(inputId = "sep", label = "Enter the separator character", value = ","),
      checkboxInput(inputId = "header", label = "File contains a header", value = TRUE)
    ),
    mainPanel(
      DTOutput("data1")
    )
  )
)
