library(readxl)
mydata <- read_excel(file.choose("/Users/nav/Desktop/talentDAO Health Survey.xlsx"), sheet = 3)
attach(mydata)

X <- cbind(Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19, Q20, Q21, Q22, Q23, Q24, Q25, Q26, Q27, Q28, Q29, Q30, Q31, Q32, Q33, Q34, Q35r, Q36, Q37, Q38, Q39, Q40, Q41, Q42, Q43, Q44, Q45, Q46, Q47, Q48) 

summary(X)
cor(X)

#principle component analysis
pca1 <- princomp(X, scores = TRUE, cor = TRUE)
summary(pca1)

loadings(pca1)

plot(pca1)
screeplot(pca1, type = "line", main = "Scree Plot")

biplot(pca1)

pca1$scores[1:10,]

#factor analysis
fa1 <- factanal(X, factor = 11)
fa1
