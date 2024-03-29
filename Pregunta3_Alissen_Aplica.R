library("naivebayes")
path="/Users/aliss/Downloads/gustos_musicales.txt"
datos=read.table(file=path,header=TRUE,sep=",")
datos$etiqueta <- as.factor(datos$etiqueta)
attach(datos)
modelo = naive_bayes(etiqueta~pinkfloyd+thebeatles+queen+oasis+radiohead+greenday+thestrokes+linkinpark+foofighters+coldplay,data=datos,usekernel=T)
coef(modelo)
par(mfrow=c(2,5))
plot(modelo);
tabla1=ftable(datos$pinkfloyd,datos$etiqueta)
addmargins(tabla1)
tabla2=ftable(datos$thebeatles,datos$etiqueta)
addmargins(tabla2)
tabla3=ftable(datos$queen,datos$etiqueta)
addmargins(tabla3)
tabla4=ftable(datos$oasis,datos$etiqueta)
addmargins(tabla4)
tabla5=ftable(datos$radiohead,datos$etiqueta)
addmargins(tabla5)
tabla6=ftable(datos$greenday,datos$etiqueta)
addmargins(tabla6)
tabla7=ftable(datos$thestrokes,datos$etiqueta)
addmargins(tabla7)
tabla8=ftable(datos$linkinpark,datos$etiqueta)
addmargins(tabla8)
tabla9=ftable(datos$foofighters,datos$etiqueta)
addmargins(tabla9)
tabla10=ftable(datos$coldplay,datos$etiqueta)
addmargins(tabla10)
