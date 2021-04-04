install.packages("xlsx", dep = T)
library("openxlsx")
mac = read.xlsx(xlsxFile = "C:/Users/kiril/Documents/R_files/MacroForStudentData.xlsx", sheet = 1, startRow = 1,colNames = TRUE, rowNames = TRUE, skipEmptyRows = TRUE, skipEmptyCols = TRUE)

fit1 = lm(mac$C~mac$I+mac$L+mac$H+mac$A)
summary(fit1)
plot(fit1)

fit2 = lm(mac$C~mac$L+mac$A)
summary(fit2)
plot(fit2)


hist(mac$C, col = "red", xlab = "Twelve-Month Average U.S.Domestic Price of Copper, Cents Per Pound")
hist(mac$G, col = "red", xlab = "Annual Gross National Product, Billions of $" )
hist(mac$I, col = "red", xlab = "Twelve-Month Average Index of Industrial Production," )
hist(mac$L, col = "red", xlab = "Twelve-Month Average London Metal Exchange Price of Copper, Pounds Sterling" )
hist(mac$H, col = "red", xlab = "Number of Housing Starts per Year, Thousands  of Units," )
hist(mac$A, col = "red", xlab = "Twelve-Month Average Price of Aluminum, Cents Per Pound," )






