3+3

# caricare le "app" di Rstudio
install.packages("tidyverse")
library(tidyverse)


# Capire il dataset 
mpg

##Capire il dataset 
# queste funzioni possono essere molto utili per capire il dataset e le variabili
head(mpg)
summary(mpg)
view(mpg)
names(mpg)
# [1] "manufacturer" "model"        "displ"        "year"        
# [5] "cyl"          "trans"        "drv"          "cty"         
# [9] "hwy"          "fl"           "class" 

## Tocca a te 1
#Esegui il codice sulla diapositiva per creare un grafico. Fai molta attenzione a ortografia, lettere maiuscole e parentesi!
ggplot(data = mpg) +
        geom_point(mapping = aes(x = displ, y = hwy, color=class))

## Tocca a te 2
# Aggiungi l'estetica di `color`,` size`, `alpha` e `shape` al tuo grafico. Sperimentate.

ggplot(data = mpg) +
        geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) +
        geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
ggplot(data = mpg) +
        geom_point(mapping = aes(x = displ, y = hwy, size = class))
ggplot(data = mpg) +
        geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# R in questo caso non mi da errore, ma attenti perché la variabile "blue" non esiste 
ggplot(mpg) + geom_point(aes(x = displ, y = hwy, color = "blue"))

## Tocca a te 3
#Sostituisci questo grafico a dispersione con uno che disegna grafici a scatole (boxplot). Usa il cheatsheet. Prova la tua ipotesi migliore.

ggplot(mpg) + geom_boxplot(aes(x = class, y= hwy))

## Tocca a te 4
#Crea un istogramma della variabile `hwy` da `mpg`. NB è solo una variabile, non due come prima 

ggplot(mpg) + geom_histogram(aes(x= hwy))

ggplot(mpg) + geom_histogram(aes(x= hwy), binwidth = 5)


## Tocca a te 5
#Crea un diagramma di densità di `hwy` colorato da `class`.
ggplot(mpg) + geom_density(aes(x= hwy, color = class))

ggplot(mpg) + geom_density(aes(x= hwy, fill = class, alpha = 0.8))


## Tocca a te 6
#Crea un grafico a barre `hwy` colorato da `class`.
ggplot(mpg) + geom_bar(aes(x= hwy, color = class))
ggplot(mpg) + geom_bar(aes(x= hwy, fill = class))
ggplot(mpg) + geom_bar(aes(x= hwy, fill = drv))



## Tocca a te 7
#Prevedi cosa farà questo codice. Quindi eseguilo.

ggplot(mpg) + 
        geom_point(aes(displ, hwy)) +
        geom_smooth(aes(displ, hwy))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
        geom_smooth(data = filter(mpg, drv == "f"), color = "green")+
        geom_smooth(data = filter(mpg, drv == "r"), color = "blue")+
        geom_smooth(data = filter(mpg, drv == "4"), color = "red")+
        geom_point(mapping = aes(color = drv)) 
        
        
## Take aways
#È possibile utilizzare questo modello di codice per creare migliaia di grafici con **ggplot2**.

ggplot(data = <DATA>) +
        <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

