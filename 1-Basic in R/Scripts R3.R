library(dslabs)
data(olive)
head(olive)
plot(olive$palmitic, olive$palmitoleic)
hist(olive$eicosenoic)
boxplot(olive$palmitic~olive$region)
