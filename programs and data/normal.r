#make this example reproducible
set.seed(0)

#create data that follows a normal distribution
normal_data <- rnorm(200)
#print(normal_data)

#perform kolmogorov-smirnov test
x<-ks.test(normal_data, 'pnorm')

	#One-sample Kolmogorov-Smirnov test

#data:  normal_data
#D = 0.073535, p-value = 0.2296
#alternative hypothesis: two-sided

#create data that follows an exponential distribution
non_normal_data <- rexp(200, rate=3)
#print(non_normal_data)
#write(non_normal_data,file="norm2.txt",append=TRUE)

#perform kolmogorov-smirnov test
print(ks.test(non_normal_data, 'pnorm'))