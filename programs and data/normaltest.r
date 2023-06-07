normal_data=read.delim("norm1.txt", sep=" ", header = FALSE)
non_normal_data=read.delim("norm2.txt", sep=" ", header = FALSE)

print(ks.test(normal_data, 'pnorm'))

a<- ks.test(normal_data, 'pnorm')$p.value
if(a>0.05)
{print("it is a normal distribution")
}else 
print("it is not a normal distribution")

print(ks.test(non_normal_data, 'pnorm'))
b<- ks.test(non_normal_data, 'pnorm')$p.value
if(b>0.05)
{
print("it is a normal distribution")
}else 
print("it is not a normal distribution")

