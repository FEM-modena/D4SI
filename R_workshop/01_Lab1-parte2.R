Per eseguire il codice premeni *Crtl + Invio * (Windows) o *Comando + Maiusc + Invio * (Mac).

# caricare le "app" di Rstudio
library(tidyverse)

# Capire il dataset 
mpg

##Capire il dataset 
# queste funzioni possono essere molto utili per capire il dataset e le variabili
head()
summary()
view()
names()


## Tocca a te 1
#Esegui il codice sulla diapositiva per creare un grafico. Fai molta attenzione a ortografia, lettere maiuscole e parentesi!


## Tocca a te 2
# Aggiungi l'estetica di `color`,` size`, `alpha` e `shape` al tuo grafico. Sperimentate.

ggplot(data = mpg) +
        geom_point(mapping = aes(x = displ, y = hwy))


## Tocca a te 3
#Sostituisci questo grafico a dispersione con uno che disegna grafici a scatole (boxplot). Usa il cheatsheet. Prova la tua ipotesi migliore.

ggplot(mpg) + geom_point(aes(class, hwy))



## Tocca a te 4
#Crea un istogramma della variabile `hwy` da `mpg`. NB è solo una variabile, non due come prima 




## Tocca a te 5
#Crea un diagramma di densità di `hwy` colorato da `class`.




## Tocca a te 6
#Crea un grafico a barre `hwy` colorato da `class`.


## Tocca a te 7
#Prevedi cosa farà questo codice. Quindi eseguilo.

ggplot(mpg) + 
        geom_point(aes(displ, hwy)) +
        geom_smooth(aes(displ, hwy))


## Take aways
#È possibile utilizzare questo modello di codice per creare migliaia di grafici con **ggplot2**.

ggplot(data = <DATA>) +
        <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

