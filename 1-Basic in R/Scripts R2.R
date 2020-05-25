library(dplyr)
library(dslabs)
data(heights)
options(digits = 3)
nrow(heights)
mean(heights$height)

average<-mean(heights$height)

ind<- filter(heights, heights$height>average & heights$sex=="Female")
nrow(ind)
ind
mean(heights$sex=="Female")
heights$sex[match(min(heights$height),heights$height)]
max(heights$height)
sum( !50:82 %in% heights$height )
heights2<- mutate(heights, ht_cm=heights$height*2.54)
heights2$ht_cm[18]
mean(heights2$sex=="Female")
sum(heights2$sex=="Female")
ind2<- filter(heights2, heights2$sex=="Female")
ind2
mean(ind2$ht_cm)
suma<- ifelse(heights$sex=="Female",1,2)
suma
sum(suma)
mean(ifelse(heights$height>72,heights$height,0))
inches_to_ft<- function(x)
{
  x/12
}
inches_to_ft(144)
sum(ifelse(inches_to_ft(heights$height)<5,1,0))
