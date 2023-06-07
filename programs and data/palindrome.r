
x = data.frame(StudentId = c(1:6), 
                 names = c("hannah","maria","jisoo","jenny","anna","rose"))

y = data.frame(StudentId = c(1:5), 
                 city = c("saef", "Karachi", "malayalam", "Quetta", "Multan")) 

z = merge(x, y, by ="StudentId" )
print("merged data frame:")
print(z)

Palindrome <- function (word) {
  identical(word, paste(rev(strsplit(word, "")[[1]]), collapse=""))
}
w=list()
for (i in 1:ncol(z))
{
    for (j in 1:nrow(z))
    {
        y<-as.character(z[j,i])
        if (Palindrome(y)==TRUE)
        {
            w<-append(w,y)

        }
    }
}
for (i in w)
{
    write(i,file="output.txt",append=TRUE)
}
print("max in each row")
print(apply(z,1,max))
print("max in each column")
print(apply(z,2,max))

