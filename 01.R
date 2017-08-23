"
CONCLUSION

  As we increase the amount N the variance keeps near to zero. Better results can be seen
  for values greater than 10000, where the variance stays near of 1.927761e-07
  However, as expected for a normal distribution, the mean return doesnt react for large amount of the input
    0.1361681 for 1000
    0.1361116 for 10000
    0.1359938 for 100000
"

fArea<-function(n){
  X<-runif(n)
  Y<-exp(-((X-2)^2)/2)/sqrt(2*pi)
  Int<-sum(Y)/n
  return(Int)
}

dists<-vector("numeric",length(1:20))
print('Simulate 20 trials of 1000 as amount')
for(i in 1:20) {
  dists[i]<-fArea(1000)
}
cat("Expected return of 1000 as amount in 20 trials simulation is ", mean(dists), "% with variance of ", var(dists))

dists<-vector("numeric",length(1:20))
print('Simulate 20 trials of 10000 as amount')
for(i in 1:20) {
  dists[i]<-fArea(10000)
}
cat("Expected return of 10000 as amount in 20 trials simulation is ", mean(dists), "% with variance of ", var(dists))

dists<-vector("numeric",length(1:20))
print('Simulate 20 trials of 100000 as amount')
for(i in 1:20) {
  dists[i]<-fArea(100000)
}
cat("Expected return of 100000 as amount in 20 trials simulation is ", mean(dists), "% with variance of ", var(dists))