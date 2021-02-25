# carichiamo i pacchetti necessari
install.packages("devtools")
library(devtools)
devtools::install_github("statsbomb/StatsBombR", force = TRUE)
devtools::install_github("FCrSTATS/SBpitch")

# se non caricare dplyr, installatelo e poi library(dplyr)
library(tidyverse)
library(StatsBombR)
library(SBpitch)

# tutte i dati con le competizioni disponibili
Comp<-FreeCompetitions()

# filtriamo per la competizione che ci interessa
Comp<-FreeCompetitions()%>%
  filter(competition_id==11, season_name=="2019/2020")

# carichiamo le partite (ci mette tanto)
Matches<-FreeMatches(Comp)
StatsBombData<-StatsBombFreeEvents(MatchesDF = Matches, Parallel = T)

# puliamo i dati
StatsBombData = allclean(StatsBombData)

# filtra per una singola partita
d1<-StatsBombData%>%
  filter(match_id == ***, type.name == "Pass", team.name == "***")

#crea il campo 
create_Pitch()

# aggiungi i passaggi
geom_point(data = ***, aes(x = ****, y = ****))

#uniamo i passaggi
geom_point(data = ***, aes(x = ****, y = ****))+
geom_segment(data = ***, aes(x = ****, y = ****, xend = ****, yend = ****))

# dove aggiungere "arrow"
arrow = arrow(length = unit(0.08,"inches"))

#aggiusta alpha

# colora per rosso

#L'asse y non è corretto nella funzione create_pitch... 
#quindi se tracciate i passaggi di un terzino sinistro si vedrà sulla destra.
# aggiungete dopo geomn_segment
scale_y_reverse()

#aggiungete i titoli
labs(title = "Aggiungi team 1",
     subtitle = "vs team 2")

#infine potete filtare per un giocatore solo
d1<-StatsBombData%>%
  filter(match_id == 2275096, type.name == "Pass", team.name == "Arsenal WFC", player.name == "Leah Williamson")










