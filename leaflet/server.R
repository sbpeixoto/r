library(DT)
library(shiny)
library(dplyr)
library(shinyalert)

function(input, output){
  
  output$m <- renderLeaflet({
    leaflet() %>% 
    addTiles() %>% 
    addMarkers(data = data, lng = ~Lon, lat= ~Lat, popup= ~Place)
  })
  

  data("data")
  
  output$table1 <- renderTable(data)
  
  observeEvent(input$m_marker_click, { 
    p <- input$m_marker_click
    #showNotification(p["lat"])

    #output$table2 <- renderTable(data[data$Lat == p["lat"],])
    
    output$table2 <- renderTable(filter(data, (data$Lat == p["lat"] & data$Lon == p["lng"])))
    
    shinyalert(paste("Lat: " , p["lat"], "\n", "Lon: " , p["lng"] ), type = "info")

  })
  
}