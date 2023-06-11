library(janitor)
library(vtree)
library(ggplot2)
library(dplyr)
library(tigerstats)

#head(vorlage_inhaltsfragen)


# Deskreptiv
# Nominal

tabyl(read_csv,Q02_Studiengang,Q01_Vorlage) 

library(tidyr)

vorlage_inhaltsfragen_long <- vorlage_inhaltsfragen %>%
  gather(key = "Frage", 
         value= "Antwort",
         c(-Q01_Vorlage,-Q02_Studiengang,-Q03_Berufserfahrung))
vorlage_inhaltsfragen_long

tabyl(vorlage_inhaltsfragen,Q05_Welches.externe.System.benutzt ,Q01_Vorlage) %>%
  adorn_percentages("col") %>%
  adorn_pct_formatting(digits = 1)

library(CGPfunctions)

CGPfunctions::PlotXTabs(vorlage_inhaltsfragen_long,Q01_Vorlage , Antwort)

CGPfunctions::PlotXTabs2(vorlage_inhaltsfragen_long,Q01_Vorlage , Antwort,  xlab = "Vorlage",
                         results.subtitle = FALSE,   labels.legend = c( "Falsch", "Richtig", "Nicht gefunden"),
                         legend.title = "Antworten",)

###Zeitfragen


CGPfunctions::PlotXTabs2(vorlage_zeit_bewertung,Q01_Vorlage ,Q06_Bewertung.Frage ,  xlab = "Vorlage",
                         results.subtitle = FALSE,
                         legend.title = "Zeit in Sekunden", title = "Zeitschätzung, Frage 5.(mittel)",
                         palette = "Pastel1")

CGPfunctions::PlotXTabs2(vorlage_zeit_bewertung,Q01_Vorlage ,Q11_Bewertung.Frage ,  xlab = "Vorlage",
                         results.subtitle = FALSE,
                         legend.title = "Zeit in Sekunden", title = "Zeitschätzung, Frage 10.(schwer)",
                         palette = "Pastel1")

CGPfunctions::PlotXTabs2(vorlage_zeit_bewertung,Q01_Vorlage ,Q16_Bewertung.Frage ,  xlab = "Vorlage",
                         results.subtitle = FALSE,
                         legend.title = "Zeit in Sekunden", title = "Zeitschätzung, Frage 15.(einfach)",
                         palette = "Pastel1")
##JA Nein

CGPfunctions::PlotXTabs2(vorlage_ja_nein ,Q01_Vorlage , Q27_Unterrichtsbeispiel,  xlab = "Vorlage",
                         results.subtitle = FALSE,   labels.legend = c( "Ja", "Nein"),
                         legend.title = "Antworten",)

CGPfunctions::PlotXTabs2(vorlage_ja_nein ,Q01_Vorlage , Q28_Vorlage.in.Ihrem.Beruf ,  xlab = "Vorlage",
                         results.subtitle = FALSE,   labels.legend = c( "Ja", "Nein"),
                         legend.title = "Antworten",)

#Zeit nummerisch

tabyl(vorlage_zeit_bewertung, Q01_Vorlage, Q16_Bewertung.Frage)

tabyl(vorlage_zeit_bewertung, Q01_Vorlage, Q11_Bewertung.Frage)

tabyl(vorlage_zeit_bewertung, Q01_Vorlage, Q06_Bewertung.Frage)


#Fragen einzeln

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q04_Was.ist.DokChess.)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q05_Welches.externe.System.benutzt)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q07_Kommunikationsprotokoll)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q08_Effizienz)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q09_P01Anpassbarkeit)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q10_XBoard)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q12_unveränderliche.Stellung)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q13_Feature.im.Modul.XBoard.P)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q14_Bitboard)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q15_Interesse.an.DokChess)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q17_Java.Klasse.Zug)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q18_Ziele.von.DokChess)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q19_Logging.Konzept)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q20_typische.Kommunikation)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q21_Software.Voraussetzungen)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q22_Engine)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q23_Eröffnungsbibliotheken)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q24_Hauptinteresse.von.Architekten)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q25_Randbedingungen)

tabyl(vorlage_inhaltsfragen, Q01_Vorlage, Q26_grafische.Frontend)
