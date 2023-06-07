fact=function(x){
  if (x==1)
    return (1)
  else
    return (fact(x-1)*x)
}
occurence=function(df,row){
  flag=TRUE
  
  
  
  if (row==nrow(df))
    return (!TRUE)
  for (adth in row+1:nrow(df)){
    flag=flag && identical(df[row,],df[adth,])
  }
  return (!flag)
}

unique_pole=function(df){
  temp=data.frame()
  temp.columns=colnames(df)
  for(row in 1:nrow(df)){
    if (occurence(df,row))
    temp=rbind(temp,df[row,])
    

  }
  print(temp)
}


df=read.table('data1.txt',sep=' ')
df=unique_pole(df)


row_sums=c()
for (i in 1:nrow(df)){
  temp=unique(unlist(df[i,]))
  print(temp)
  row_sums = c(row_sums,sum(temp))
}
print("row sums are:")
print(row_sums)
print("factorial of max rowsum is:")
print(fact(max(row_sums)))