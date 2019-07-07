#1,2
BelgiumPop<-18531289
BelgiumArea<-30528#km^2

NetherlandsPop<-16979120
NetherlandsArea<-41526 

LuxembourgPop<-576249
LuxembourgArea<-2586

vec<-c(BelgiumPop,BelgiumArea,NetherlandsPop,NetherlandsArea,LuxembourgPop,
       LuxembourgArea)

matrix1<- matrix(vec,nrow=3, byrow = T)
matrix1
#3
colnames(matrix1)<-c("Population","Land area")
rownames(matrix1)<-c("Belgium","Netherlands","Luxembourg")

#4
Benelux<-c(colSums(matrix1))# Benelux:population,area


matrixSum<- rbind(matrix1, Benelux)

final<-t(round(t(matrixSum)*c(0.000001,100),0))
final#population in millions,land area in hectares


