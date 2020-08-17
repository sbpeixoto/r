function(input, output){
  
  output$data1 <- renderDT({
    
    req(input$file1)
    
    df <- read.csv(input$file1$datapath, header = input$header, sep = input$sep)
    
    return(datatable(df))
  })
}