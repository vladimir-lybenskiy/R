### vectors, data, matrices, subsetting
#Vectors
x = c(2,7,5)
x
y=seq(from=4,length=3,by=3)
?seq
y

#Operations on vectors
x+y
x/y
x^y

#Subsetting
x[2]
x[2:3]
x[-2]
x[-c(1,2)]

#Matrices
z=matrix(seq(1,12),4,3)
z

#Subsetting
z[3:4,2:3]
z[,2:3]
z[,1]
z[,1,drop=FALSE]

#Dimension of matrix
dim(z)

#Variables in environment
ls()

#Remove variable from environment
rm(y)
ls()

### Generating random data, graphics

#Generating uniformly distributed variable
x=runif(50)

#Generating normaly distributed variable
y=rnorm(50)

#Plot variables
plot(x,y)
plot(x,y,xlab="Random Uniform",ylab="Random Normal",pch="*",col="blue")
points(x[1:2], y[1:2], col = "red")

#Pair-plots
par(mfrow=c(2,1))
plot(x,y)
hist(y)
par(mfrow=c(1,1))

### Reading in data
Auto <- read.csv("Auto.csv", sep = "\t")

#Names of the object
names(Auto)

#Dimension of data.frame 
dim(Auto)

#Class of the data.frame
class(Auto)

#Summary of object
summary(Auto)

#Plot relation
plot(Auto$cylinders,Auto$mpg)

attach(Auto)

#Active library
search()

#Plot bar plot
plot(cylinders,mpg)
cylinders=as.factor(cylinders)
plot(cylinders,mpg,xlab="Cylinders",ylab="Mpg",col="red")

#Plot to .png file
png(file="mpg.png")
plot(cylinders,mpg,xlab="Cylinders",ylab="Mpg",col="red")
dev.off()

#Pair plot
pairs(Auto,col="brown")
pairs(mpg~cylinders+acceleration+weight,Auto)