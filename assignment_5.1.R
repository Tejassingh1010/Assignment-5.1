#
states = rownames(USArrests)
library(stringr)
str_count(states,"a")
str_count(tolower(states),"a")

vowels = c("a","e","i","o","u")
num_vowels = vector(mode = "integer",length = 5)

for (j in seq_along(vowels)) {
  num = str_count(tolower(states),vowels[j])
  num_vowels[j] = sum(num)
}

#1. How many vowels are there in the names of USA States?
names(num_vowels) = vowels
num_vowels
sort(num_vowels,decreasing = TRUE)

#Visualize the vowels distribution.

barplot(num_vowels, main = "Number of vowels in USA States names",
        border = "red", ylim = c(0, 80))

