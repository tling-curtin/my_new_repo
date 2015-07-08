This is a newer line 15:06 08-07-15

print(x=c('Hello world.'),quote=FALSE) # character vector of length 1
print(c('Hello'),quote=FALSE)

2*(3-1)^(1/3) # simple arithmetics
x<-2 # store global variable
x=2 # store local variable
x < -3 # is less than -3?

ls() # list objects created

save.image(file='~/Desktop/test_workspace.RData') # save workspace

rm(list=ls()) # clear list of variables

load(file='~/Desktop/test_workspace.RData') # load workspace

a <- c(1,2,3,2,1,3) # numeric vector, think 'c' for concatenate
mean(a)
var(a)
class(a)

b<-seq(from=1,to=6,by=1) # sequence with variable step
1:6 # sequence with step of 1
class(b)

c<-c('a','a','b','b','c','d')
summary(c)

c.f<-factor(c)
class(c.f)

d<-c('apple','apple','banana','banana','orange','pear')
summary(factor(d))

var(a)

a+b # vector addition
a*b # multiplication of elements of two vectors
a%*%b
t(b)
t(a)%*%b

plot(a,b)
plot(x=b,y=a)
plot(y=a,x=b,type='b',main='x and y arguments')

?plot # see arguments section of the page

f<-c('red','yellow','orange','green','blue','violet')
class(f)

plot(y=b,x=a,col=f,pch=1)

plot(1:21,1:21,pch=1,cex=3)

plot(y=b,x=a,pch=19,xlim=c(1,4),ylim=c(1,6))
par(new=TRUE)
plot(y=b,x=a,pch=20,col=f,xlim=c(1,4),ylim(1,6))

plot(y=b,x=a,col=f,pch=19,cex=2,xlab=' axis title',ylab='ylab title')

mat.1<-cbind(a,b)
mat.1
class(mat.1)
dim(mat.1) # dimensions of matrix

mat.2<-cbind(c,d)
mat.2
class(mat.2)

mat.3<-cbind(mat.1,mat.2)
mat.3
dim(mat.3)

mat.4<-matrix(data=seq(from=1,to=10,by=1),byrow=FALSE,nrow=5)
mat.4
class(mat.4)
dim(mat.4)

mat.5<-matrix(data=seq(from=1,to=10,by=1),byrow=TRUE,ncol=2)
mat.5[,1] # first column
mat.5[1,] # first row
mat.5[1:4,]
mat.5[1:4,1]

mat.2
mat.2[1:3,'c']

mat.5
t(mat.5)

mat.4*mat.5
mat.4%*%mat.5

sm<-cbind(mat.4,mat.5)
cov(sm)
diag(sm)
ColMeans(mat.1)

Data<-data.frame(mat.1,mat.2) # object like a matric with numbers and character in some columns
Data[,'a']
Data[,1]
Data$a
mean(Data$a)

Data<-data.frame(a,b,f)
Data<-data.frame(x1=a,x2=b,point.colour=f)

Data$point.colour
plot(x=Data$x1,y=Data$x2,col=f,pch=19,cex=2)
plot(x=Data$x1,y=Data$x2,col=Data$point.colour,pch=19,cex=2,xlab='x1',ylab='x2')

Laptops<-data.frame()
Laptops<-edit(Laptops)
View(Laptops)

Laptops$Brand<-factor(Laptops$Brand)
summary(Laptops)

Laptops$OS<-factor(Laptops$OS)
summary(Laptops)
class(Laptops$OS)

with(Laptops,plot(x=Weight,y=Screen))
plot(x=Laptops$Table,y=Laptops$Screen,col=Laptops$Brand,pch=Laptops$Brand)

plot(Laptops$Weight)
hist(Laptops$Weight)
boxplot(Laptops$Weight,main='Laptop Weight')
write.csv(x=Laptops,file=file.choose())

rm(list='Laptops')
save(list='Laptops',file=file.choose())
