library(janitor)
library(vtree)
library(ggplot2)
library(dplyr)
library(tigerstats)

#head(vorlage_inhaltsfragen)


# Deskreptiv
# Nominal

tabyl(vorlage_inhaltsfragen ,Q01_Vorlage, Q02_Vertiefungsrichtung)


library(tidyr)

vorlage_inhaltsfragen_long <- vorlage_inhaltsfragen %>%
                              gather(key = "Frage", 
                                     value= "Antwort",
                                     c(-Q01_Vorlage,-Q02_Vertiefungsrichtung,-Q03_Berufserfahrung))
vorlage_inhaltsfragen_long



tabyl(vorlage_inhaltsfragen_long, Antwort,Q01_Vorlage, Q03_Berufserfahrung) %>%
  adorn_percentages("col") %>%
  adorn_pct_formatting(digits = 1)

library(CGPfunctions)


CGPfunctions::PlotXTabs(vorlage_inhaltsfragen_long,Q02_Vertiefungsrichtung , Q01_Vorlage)

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

#Zeit

tabyl(vorlage_zeit_bewertung, Q01_Vorlage, Q16_Bewertung.Frage)

tabyl(vorlage_zeit_bewertung, Q01_Vorlage, Q11_Bewertung.Frage)

tabyl(vorlage_zeit_bewertung, Q01_Vorlage, Q06_Bewertung.Frage)
