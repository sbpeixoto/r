## Source any other required packages
library(leaflet)

## Data Loads go in here
data <- read.csv("C:\\Courses\\R\\Book1.csv")

options(digits=6)

data$Lon <- as.numeric(data$Lon)
data$Lat <- as.numeric(data$Lat)

# m <- leaflet() %>% 
#   addTiles() %>% 
#   addMarkers(data = data, lng = ~Lon, lat= ~Lat, popup= ~Place)
# m

## Function definitios
