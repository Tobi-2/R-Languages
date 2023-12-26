###CREATING GRAPHICS WINDOW
x11()
##CREATING A  PDF DEVICE
pdf()
##KNOW TGE ACTIVE DEVICE
dev.cur()
##TO SET AN ACTIVE DEVICE
dev.set(2)

dev.cur()

airquality

##HOW TO CREATE SCATTER PLOTS
plot(airquality$Wind)
plot(airquality$Solar.R)

##HOW TO SPLIT OUR GRAPHICS DEVICE
##CREATE A MATRIX WITH UR INTENDED NUMBER OF SIDES
mats<-matrix(1:4,2)
mats

##ASIGN  THE MATRIX TO YOUR DEVICE LAYOUT
layout(mats)

##CREATE PLOTSON THE NEW DEVICE LAYOUT
plot(airquality$Wind)
plot(airquality$Solar.R)
plot(airquality$Temp)
plot(airquality$Ozone)
