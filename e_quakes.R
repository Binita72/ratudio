e_quakes<-datasets::quakes
View(e_quakes)
head(e_quakes,10)
tail(e_quakes,10)

e_quakes[,c(1,2)]
df<-e_quakes[,-6]
summary(e_quakes[,1])
summary(e_quakes)
e_quakes$lat

summary(e_quakes$lat)
summary(e_quakes)
summary(e_quakes$long)
summary(e_quakes)
summary(e_quakes$depth)
summary(e_quakes$mag)
summary(e_quakes$stations)

plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$long,e_quakes$depth,e_quakes$mag,e_quakes$stations, type="p")
plot(e_quakes$lat, e_quakes$long, type="p")
plot(e_quakes)

plot(e_quakes$long, type="b")
plot(e_quakes$depth, ylab="depth concenteration", xlab="No of Instances, main="depth in Bangalore",col="blue)
plot(e_quakes$mag, ylab = 'magnitude size', xlab = 'no of instaces', main = 'magnitude level', col = 'red')

barplot(e_quakes$mag, main = 'depth concenteration on earth', ylab = 'magnitude level', col = 'red', horiz= T, axes = T)

hist(e_quakes$lat)
hist(e_quakes$stations, 
     main = 'affected stations in city',
     xlab = 'stations', col= 'red')

boxplot(e_quakes$lat, main="lat_Boxplot")

boxplot(e_quakes, main='Multiple')

par(mfrow=c(3,3),mar=c(2, 5,2,1), las=0, bty="0")

plot(e_quakes$mag)
plot(e_quakes$mag, e_quakes$depth)
plot(e_quakes$mag, type = "l")
plot(e_quakes$mag, type = "l")
plot(e_quakes$mag, type = "l")
barplot(e_quakes$mag, main = 'depth of magnitude', xlab = 'magnitude levels', col='green', horiz =  TRUE)
hist(e_quakes$stations)

boxplot(e_quakes$stations)
boxplot(e_quakes[,0:4], main= 'Multiple Box plots')
