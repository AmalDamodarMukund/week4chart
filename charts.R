#create vectors
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)

#create dataframe from vectors
opinion <- c("Excellent", "No effect", "Some effect", "No effect", "Some effect")

drugs <- data.frame(dose, drugA, drugB, opinion)

#general plot of data frame
plot(drugs)

#Examine individual charts
attach(drugs)

#"type = o" means blue dot
plot(dose, type = "o", col = "Blue")

#"type = b" means both lines are plotted
plot(dose, drugA, type = "b")

#to plot a category var, then convert to factor first
factored_opinion <- as.factor(drugs$opinion)
drugs$opinion <- factored_opinion
str(drugs)

plot(drugs$opinion, las=2)

#par function - default parameters
opar <- par(no.readonly = TRUE)

#lty = line type
#lwd = line width

par(lty = 2, pch = 17)
plot(dose, drugA, type = "b")
par = opar

plot(drugA, 
     type = "o", 
     pch = 22, 
     las = 1,
     lty = 2, 
     col = "red",
     main = "Drug dosage", 
     col.main = "Blue", 
     font.main = 4,
     xlab = "No of days", 
     ylab = "Drug dosage (ml)")

#drug A on the y-axis that ranges from 0 to max value
graph_range <- range(0, drugA, drugB)
graph_range

plot(drugA, 
     type = "o",
     col = "blue")

#Graph drug B with red dashed lines and sqaure points
lines(drugB, type = "o", pch = 22, lty = 2 , col = "Red")

#Make custom x-axis
axis(1, at:1:5, lab = c("20 ml" , "40 ml" , "60 ml" , "80 ml" , "100 ml"))

#Make custom y-axis
axis(2, las = 1, at = 5 * 0:graph_range[2])

#################################################
#plot drugA and drugB in one chart
#show drug A as blue line and blue triangles
#and drugB as a red line and red squares

opar <- par(no.readonly = TRUE)

plot(drugA,
     type = "o",
     main = "Drug dosage",
     xlab = "No of days",
     ylab = "Drug dosage (ml)",
     col = "blue")

# Graph drug B with red dashed lines and square points
lines(drugB, type = "o", pch=22, lty=2, col ="Red")
par <- opar

#Modify default parameters so that
#graph is 2 inches wide and 3 inches tall
par(pin = c(2,3))
plot(drugA,
     type = "o",
     main = "Drug dosage",
     xlab = "No of days",
     ylab = "Drug dosage (ml)",
     col = "blue")

# Graph drug B with red dashed lines and square points
lines(drugB, type = "o", pch=22, lty=2, col ="Red")
par <- opar

#lines will be twice default width and
#symbols will be 1.5 default size
par(lwd = 2, cex = 1.5)
plot(drugA,
     type = "o",
     main = "Drug dosage",
     xlab = "No of days",
     ylab = "Drug dosage (ml)",
     col = "blue")

# Graph drug B with red dashed lines and square points
lines(drugB, type = "o", pch=22, lty=2, col ="Red")
par <- opar

#arrange charts in 3 rows by 1 column
par(mfrow = c(3,1))

plot(drugA,
     type = "o",
     main = "Drug dosage",
     xlab = "No of days",
     ylab = "Drug dosage (ml)",
     col = "blue")

# Graph drug B with red dashed lines and square points
lines(drugB, type = "o", pch=22, lty=2, col ="Red")
par <- opar
