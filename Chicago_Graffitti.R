#setwd ("/niharika/Documents/cs571/HW2")
library(MASS)
data=read.csv("Grafity_data.csv")
Community_Area=data$Community_Area
Graffity_count=table(Community_Area)

library(ggmap)

df <- as.data.frame(cbind(data$LONGITUDE,data$LATITUDE))

# getting the map
mapit <- get_map(location = "chicago", zoom = 11)

# plotting the map with some points on it
fin<-ggmap(mapit) + geom_point(data = df, aes(x = data$LONGITUDE, y = data$LATITUDE, fill = "red", alpha = 0.6), size = 0.6, shape = 2) + guides(fill=FALSE, alpha=FALSE, size=FALSE)
fin2<-ggmap(mapit) + geom_point(data = df, aes(x = data$LONGITUDE, y = data$LATITUDE, fill = "red", alpha = 0.6), size = 0.6, shape = 2) + guides(fill=FALSE, alpha=FALSE, size=FALSE)

#fin<-ggmap(mapit) + geom_tile(data = df, aes(x = data$Longitude, y = data$Latitude, alpha = 0.5), fill = "red") + theme(axis.title.y = element_blank(), axis.title.x = element_blank())

print(fin)

#plot(Graffity_count)











