secher<-read.table("secher.txt", header=T)
model <- lm(bwt~bpd, data = secher)
sum.model<-summary(model)
R2 <- sum.model$r.squared
f <- sum.model$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept <- model$coeffiecents[1]
slope <- model$coefficients[2]
output<-sprintf("slope=%f  intercept=%f",slope, intercept)
cat(output)
png("bwt_bpd.png")
plot(bwt~bpd, data = secher)
abline(model)
dev.off()

model <- lm(bwt~ad, data = secher)
sum.model<-summary(model)
R2.1 <- sum.model$r.squared
f.2 <- sum.model$fstatistic
p.value.2<-pf(f.2[1],f.2[2],f.2[3],lower.tail=F)
output.2<-sprintf("R2.1 = %f and p-value.2=%f", R2.1, p.value.2)
cat(output.2)
intercept.2 <- model$coeffiecents[1]
slope.2 <- model$coefficients[2]
output.2<-sprintf("slope=%f  intercept=%f",slope, intercept)
cat(output.2)
png("bwt_ad.png")
plot(bwt~ad, data = secher)
abline(model)
dev.off()

model <- lm(bwt~bpd+ad, data = secher)
sum.model<-summary(model)
R2.2 <- sum.model$r.squared
f.3 <- sum.model$fstatistic
p.value.3<-pf(f.3[1],f.3[2],f.3[3],lower.tail=F)
output.3<-sprintf("R2.2 = %f and p-value.2=%f", R2.2, p.value.3)
cat(output.3)