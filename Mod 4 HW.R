# Patient Data
Patient.1 <- c("0.6","103","bad","low","low")
Patient.2 <- c("0.3","87","bad","low","high")
Patient.3 <- c("0.4","32","bad","high","low")
Patient.4 <- c("0.4","42","bad","high","high")
Patient.5 <- c("0.2","59","good","low","low")
Patient.6 <- c("0.6","109","good","low","high")
Patient.7 <- c("0.3","78","good","high","low")
Patient.8 <- c("0.4","205","good","high","high")
Patient.9 <- c("0.9","135","NA","high","high")
Patient.10 <- c("0.2","176","bad","high","high")

# Patient data in data.frame
Patients <- data.frame(Patient.1,Patient.2,Patient.3,Patient.4,Patient.5,Patient.6,Patient.7,Patient.8,Patient.9,Patient.10)

# Create Vectors
Frequency <- sapply(sapply(Patients[1,],as.character),as.numeric)
BP <- sapply(sapply(Patients[2,], as.character),as.numeric)
First <- ifelse(Patients[3,] == "bad",1,ifelse(Patients[3,] == "good",0,NA))[1,]
Second <- ifelse(Patients[4,] == "high",1,ifelse(Patients[4,] == "low",0,NA))[1,]
Final <- ifelse(Patients[5,] == "high",1,ifelse(Patients[5,] == "low",0,NA))[1,]

# Create Matrix
Patients.N <- matrix(c(Frequency,BP,First,Second,Final),ncol=10,byrow=T)
colnames(Patients.N) <- colnames(Patients)
rownames(Patients.N) <- c("Frequency","BP","First","Second","Final")

# Create boxplot of doctor and ER opinions and BP
boxplot(Patients.N[3:4,], main="Doctor Opinions vs. ER Decision vs. Blood Pressure", ylab="Assessment", yaxt='n', las=2, col="gray")
axis(2,labels=c("Good","Bad"), at=0:1, las=0)

# Add points for ER Decision
points(Patients.N[5,], col="darkgreen", pch=19)

# Add overlay plot for BP
par(new=T)
plot(Patients.N[2,], axes=F, col="red", pch=18, xlab="", ylab="")
axis(4)
mtext("Blood Pressure",4)

# Add legend
legend("bottomright", legend=c("Doc","ER", "BP"), col=c("black","darkgreen","red"), fill=c("black","darkgreen","red"))

# Create boxplot of doctor and ER opinions and Frequency
boxplot(Patients.N[3:4,], main="Doctor Opinions vs. ER Decision vs. Frequency", ylab="Assessment", yaxt='n', las=2, col="gray")
axis(2,labels=c("Good","Bad"), at=0:1, las=0)

# Add points for ER Decision
points(Patients.N[5,], col="darkgreen", pch=19)

# Add overlay plot for Frequency
par(new=T)
plot(Patients.N[1,], axes=F, col="red", pch=18, xlab="", ylab="")
axis(4)
mtext("Frequency",4)

# Add legend
legend("topleft", legend=c("Doc","ER", "Freq"), col=c("black","darkgreen","red"), fill=c("black","darkgreen","red"))

# Histogram for Frequency
hist(Patients.N[1,], col="gray", main="Patient Frequency", xlab="Visit Frequency", ylab="Patients")

# Boxplot of Frequency
boxplot(Frequency, main="Frequency Boxplot", ylab="Frequency")

# Boxplot of Blood Pressure
boxplot(BP, main="Blood Pressure Boxpolt", ylab="Blood Pressure")

# Histogram of Blood Pressure
hist(Patients.N[2,], col="gray", main="Blood Pressure Frequency", xlab="Blood Pressure", ylab="Frequency")

     