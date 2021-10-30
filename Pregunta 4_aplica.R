path="/Users/aliss/Downloads/datos_heart_disease.txt"
datos=read.table(file=path,header=TRUE,sep=",")
attach(datos)
modelo = glm(chd~sbp+tobacco+ldl+adiposity+famhist+typea+obesity+alcohol+age,family=binomial(link="logit"))
summary(modelo)
datos2 <- datos[,-9]
attach(datos2)
modelo = glm(chd~sbp+tobacco+ldl+adiposity+famhist+typea+obesity+age,family=binomial(link="logit"))
summary(modelo)
datos3 <- datos2[,-5]
attach(datos3)
modelo = glm(chd~sbp+tobacco+ldl+famhist+typea+obesity+age,family=binomial(link="logit"))
summary(modelo)
datos4 <- datos3[,-2]
attach(datos4)
modelo = glm(chd~tobacco+ldl+famhist+typea+obesity+age,family=binomial(link="logit"))
summary(modelo)
datos5 <- datos4[,-6]
attach(datos5)
modelo = glm(chd~tobacT^Tco+ldl+famhist+typea+age,family=binomial(link="logit"))
summary(modelo)



