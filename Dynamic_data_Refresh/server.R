library(data.table)

function(input, output, session){
  
  fileData <- reactiveFileReader(intervalMillis = 1000,
                                 session = session,
                                 filePath = 'c:\\git\\R\\Dynamic_data_Refresh\\Book1.csv',
                                 readFunc = read.csv)
  
  dataAggregation = reactive ({
    
    aggData <- data.table(fileData())[,list(totalSales = sum(Value)),
                                      by = list(Person, Day)]
    
    return(aggData)
  })
  
  output$updatedData <- renderDT(datatable(dataAggregation()))
  
  output$updatedPlot <- renderPlot({
    
    ggplot(data = dataAggregation(), aes(x = Person, y = totalSales, fill = Person)) + geom_col()
  })
                              
}