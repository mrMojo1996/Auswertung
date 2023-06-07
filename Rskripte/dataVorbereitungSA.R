# Read CSV into DataFrame
# Daten Aufbereitung(Buchstaben löschen, unnötige colums plus eine PErson aus GPM für balance)

read_csv = read.csv('C:/Users/DmByk/OneDrive/Desktop/bachelor/umfrage/SA/Befragung_ADFARC42_Software_Architektur.csv',sep=';')
read_csv<-read_csv[,-c(1,2,3,4,5,6,7,8,9,10,39,40)]
#Löschen Leere Row Plus Gpm Person
read_csv<-read_csv[-c(14,7),]
# 

read_csv <- data.frame(lapply(read_csv, function(x) gsub("[^1-5.]", "", x)))
read_csv$Q01_Vorlage <- gsub("242", "Arc42", read_csv$Q01_Vorlage)
read_csv$Q01_Vorlage <- gsub("1", "Adf", read_csv$Q01_Vorlage)

read_csv$Q02_Vertiefungsrichtung <- gsub("1", "SSE", read_csv$Q02_Vertiefungsrichtung)
read_csv$Q02_Vertiefungsrichtung <- gsub("2", "GPM", read_csv$Q02_Vertiefungsrichtung)

### Meinung, Beruf und Beispiel
read_csv$Q27_Unterrichtsbeispiel <- gsub("1", "Ja", read_csv$Q27_Unterrichtsbeispiel)
read_csv$Q27_Unterrichtsbeispiel <- gsub("2", "Nein", read_csv$Q27_Unterrichtsbeispiel)
### 
read_csv$Q28_Vorlage.in.Ihrem.Beruf <- gsub("1", "Ja", read_csv$Q28_Vorlage.in.Ihrem.Beruf)
read_csv$Q28_Vorlage.in.Ihrem.Beruf <- gsub("2", "Nein", read_csv$Q28_Vorlage.in.Ihrem.Beruf)

# Richtigkeit prüfen
# 1-richtig, 0-falsch NA-Antwort nicht gefunden
read_csv$Q04_Was.ist.DokChess. <- gsub("[124]", "0", read_csv$Q04_Was.ist.DokChess.)
read_csv$Q04_Was.ist.DokChess. <- gsub("3", "1", read_csv$Q04_Was.ist.DokChess.)
read_csv$Q04_Was.ist.DokChess. <- gsub("5", "NA", read_csv$Q04_Was.ist.DokChess.)
###
read_csv$Q05_Welches.externe.System.benutzt <- gsub("[134]", "0", read_csv$Q05_Welches.externe.System.benutzt)
read_csv$Q05_Welches.externe.System.benutzt <- gsub("2", "1", read_csv$Q05_Welches.externe.System.benutzt)
read_csv$Q05_Welches.externe.System.benutzt <- gsub("5", "NA", read_csv$Q05_Welches.externe.System.benutzt)

###
read_csv$Q07_Kommunikationsprotokoll <- gsub("[134]", "0", read_csv$Q07_Kommunikationsprotokoll)
read_csv$Q07_Kommunikationsprotokoll <- gsub("2", "1", read_csv$Q07_Kommunikationsprotokoll)
read_csv$Q07_Kommunikationsprotokoll <- gsub("5", "NA", read_csv$Q07_Kommunikationsprotokoll)
###
read_csv$Q08_Effizienz <- gsub("[123]", "0", read_csv$Q08_Effizienz)
read_csv$Q08_Effizienz <- gsub("4", "1", read_csv$Q08_Effizienz)
read_csv$Q08_Effizienz <- gsub("5", "NA", read_csv$Q08_Effizienz)
##
read_csv$Q09_P01Anpassbarkeit <- gsub("[124]", "0", read_csv$Q09_P01Anpassbarkeit)
read_csv$Q09_P01Anpassbarkeit <- gsub("3", "1", read_csv$Q09_P01Anpassbarkeit)
read_csv$Q09_P01Anpassbarkeit <- gsub("5", "NA", read_csv$Q09_P01Anpassbarkeit)
###
read_csv$Q10_XBoard <- gsub("[134]", "0", read_csv$Q10_XBoard)
read_csv$Q10_XBoard <- gsub("2", "1", read_csv$Q10_XBoard)
read_csv$Q10_XBoard <- gsub("5", "NA", read_csv$Q10_XBoard)
####
read_csv$Q12_unveränderliche.Stellung <- gsub("[234]", "0", read_csv$Q12_unveränderliche.Stellung)
read_csv$Q12_unveränderliche.Stellung <- gsub("5", "NA", read_csv$Q12_unveränderliche.Stellung)
###
read_csv$Q13_Feature.im.Modul.XBoard.P <- gsub("[134]", "0", read_csv$Q13_Feature.im.Modul.XBoard.P)
read_csv$Q13_Feature.im.Modul.XBoard.P <- gsub("2", "1", read_csv$Q13_Feature.im.Modul.XBoard.P)
read_csv$Q13_Feature.im.Modul.XBoard.P <- gsub("5", "NA", read_csv$Q13_Feature.im.Modul.XBoard.P)
###
read_csv$Q14_Bitboard <- gsub("[124]", "0", read_csv$Q14_Bitboard)
read_csv$Q14_Bitboard <- gsub("3", "1", read_csv$Q14_Bitboard)
read_csv$Q14_Bitboard <- gsub("5", "NA", read_csv$Q14_Bitboard)
###
read_csv$Q15_Interesse.an.DokChess <- gsub("[124]", "0", read_csv$Q15_Interesse.an.DokChess)
read_csv$Q15_Interesse.an.DokChess <- gsub("3", "1", read_csv$Q15_Interesse.an.DokChess)
read_csv$Q15_Interesse.an.DokChess <- gsub("5", "NA", read_csv$Q15_Interesse.an.DokChess)
###
read_csv$Q17_Java.Klasse.Zug <- gsub("[134]", "0", read_csv$Q17_Java.Klasse.Zug)
read_csv$Q17_Java.Klasse.Zug <- gsub("2", "1", read_csv$Q17_Java.Klasse.Zug)
read_csv$Q17_Java.Klasse.Zug <- gsub("5", "NA", read_csv$Q17_Java.Klasse.Zug)
###
read_csv$Q18_Ziele.von.DokChess <- gsub("[123]", "0", read_csv$Q18_Ziele.von.DokChess)
read_csv$Q18_Ziele.von.DokChess <- gsub("4", "1", read_csv$Q18_Ziele.von.DokChess)
read_csv$Q18_Ziele.von.DokChess <- gsub("5", "NA", read_csv$Q18_Ziele.von.DokChess)
###
read_csv$Q19_Logging.Konzept <- gsub("[124]", "0", read_csv$Q18_Ziele.von.DokChess)
read_csv$Q19_Logging.Konzept <- gsub("3", "1", read_csv$Q18_Ziele.von.DokChess)
read_csv$Q19_Logging.Konzept <- gsub("5", "NA", read_csv$Q18_Ziele.von.DokChess)
###
read_csv$Q20_typische.Kommunikation <- gsub("[234]", "0", read_csv$Q18_Ziele.von.DokChess)
read_csv$Q20_typische.Kommunikation <- gsub("5", "NA", read_csv$Q18_Ziele.von.DokChess)
##
read_csv$Q21_Software.Voraussetzungen <- gsub("^1", "0", read_csv$Q21_Software.Voraussetzungen)
read_csv$Q21_Software.Voraussetzungen <- gsub("[24]", "0", read_csv$Q21_Software.Voraussetzungen)
read_csv$Q21_Software.Voraussetzungen <- gsub("311", "1", read_csv$Q21_Software.Voraussetzungen)
read_csv$Q21_Software.Voraussetzungen <- gsub("5", "NA", read_csv$Q21_Software.Voraussetzungen)
###
read_csv$Q22_Engine <- gsub("[234]", "0", read_csv$Q22_Engine)
read_csv$Q22_Engine <- gsub("5", "NA", read_csv$Q22_Engine)
###
read_csv$Q23_Eröffnungsbibliotheken <- gsub("[234]", "0", read_csv$Q23_Eröffnungsbibliotheken)
read_csv$Q23_Eröffnungsbibliotheken <- gsub("5", "NA", read_csv$Q23_Eröffnungsbibliotheken)
###
read_csv$Q24_Hauptinteresse.von.Architekten <- gsub("[123]", "0", read_csv$Q24_Hauptinteresse.von.Architekten)
read_csv$Q24_Hauptinteresse.von.Architekten <- gsub("4", "1", read_csv$Q24_Hauptinteresse.von.Architekten)
read_csv$Q24_Hauptinteresse.von.Architekten <- gsub("5", "NA", read_csv$Q24_Hauptinteresse.von.Architekten)
###
read_csv$Q25_Randbedingungen <- gsub("1\\.", "1", read_csv$Q25_Randbedingungen)
read_csv$Q25_Randbedingungen <- gsub("[234]", "0", read_csv$Q25_Randbedingungen)
read_csv$Q25_Randbedingungen <- gsub("5", "NA", read_csv$Q25_Randbedingungen)
###
read_csv$Q26_grafische.Frontend <- gsub("[123]", "0", read_csv$Q26_grafische.Frontend)
read_csv$Q26_grafische.Frontend <- gsub("4", "1", read_csv$Q26_grafische.Frontend)
read_csv$Q26_grafische.Frontend <- gsub("5", "NA", read_csv$Q26_grafische.Frontend)


# Zeitfragen  Aufbereitung
read_csv$Q06_Bewertung.Frage <- gsub("23", "2", read_csv$Q06_Bewertung.Frage)
read_csv$Q06_Bewertung.Frage <- gsub("13", "1", read_csv$Q06_Bewertung.Frage)
###
read_csv$Q11_Bewertung.Frage <- gsub("23", "2", read_csv$Q11_Bewertung.Frage)
read_csv$Q11_Bewertung.Frage <- gsub("13", "1", read_csv$Q11_Bewertung.Frage)
###
read_csv$Q16_Bewertung.Frage <- gsub("23", "2", read_csv$Q16_Bewertung.Frage)
read_csv$Q16_Bewertung.Frage <- gsub("13", "1", read_csv$Q16_Bewertung.Frage)
####
read_csv$Q06_Bewertung.Frage<-factor(read_csv$Q06_Bewertung.Frage, levels = c(1:4),labels = c("<30","30-60",">60", "NA"), ordered = TRUE)
read_csv$Q11_Bewertung.Frage<-factor(read_csv$Q11_Bewertung.Frage, levels = c(1:4),labels = c("<30","30-60",">60", "NA"), ordered = TRUE)
read_csv$Q16_Bewertung.Frage<-factor(read_csv$Q16_Bewertung.Frage, levels = c(1:4),labels = c("<30","30-60",">60", "NA"), ordered = TRUE)

#

vorlage_zeit_bewertung <- read_csv[ ,c(1,6,11,16)]

vorlage_ja_nein <- read_csv[ ,c(1,27,28)]

vorlage_inhaltsfragen<-read_csv[,-c(6,11,16,27,28)]

#berufserfahrung_inhaltsfragen<-read_csv[,-c(2,3,6,11,16,27,28)]
