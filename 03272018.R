library(stringr)


# 1
print("DSO")
print("\"")          ### "\" escape symbol
cat("\"")
cat("DSO\n545")
cat("DSO\t545")

# 2
cat(":-\\")

cat("(^_^\")")

cat("@_'-'")

cat("\\m/")

# 3
?str_locate
?str_sub

# 4
str_locate(string = "great", pattern = "a")
str_locate("fantastic","a")  ## return the first "a"
str_locate_all("fantastic","a")
str_locate("super","a") 

str_locate(c("fantastic","great","super"),"a")

# 5
str_sub("testing",1,3)
str_sub("testing",4,-1)
str_sub("testing",1,4)
str_sub("testing",end = 4)

str_extract("testing","test")   # another method


# 6
input = c("abc","defg")
str_sub(input,c(2,3))  # c(2,3) starting from 2nd position & 3rd position to the end

str_sub(input,c(1,2),c(2,3)) 

# 7
emails = readRDS("email.rds")

emails[1]
cat(emails[1])  # transfer the format

str_locate(emails[1],pattern = "\n\n") ## locate the position of the blank line between the header & body


# 8
str_sub(emails[1],0, 842)   ## head of the email

str_sub(emails[1],843)      ## body of the email

header = str_sub(emails[1],1,842)
cat(header)

body = str_sub(emails[1],843)
cat(body)

# 10

length(emails)
breaks = str_locate(emails,"\n\n")

headers = str_sub(emails, end = breaks[,1])

bodies = str_sub(emails,start = breaks[,2])

cat(bodies[6])



























































