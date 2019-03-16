# Semesterarbeit_FPGA_VHDL
Digitale Uhr

Die Uhr besteht aus folgenden Signalen:  sec_0_ena  sec_1_ena  min_0_ena  min_1_ena  hr_0_ena  hr_1_ena  evening_ena
Jedes dieser Signale steuert seinen eigenen Zähler. Diese lauten:  counter_sec_0
 counter_sec_1  counter_min_0  counter_min_1  counter_hr_0 abends ist)
 counter_hr_1
(Ziffer 0, zählt von 0-9) (Ziffer 1, zählt von 0-5) (Ziffer 2, zählt von 0-9) (Ziffer 3, zählt von 0-5)
(Ziffer 4, zählt von 0-3 oder von 0-9, abhängig ob es tagsüber oder (Ziffer 5, zählt von 0-2)
Um den 50 MHz Clock (50 Millionen Perioden pro Sekunde) auf eine Frequenz von 1 Hz runter zu bringen ist es nötig einen Zähler zu kreieren, welcher auf 50 Millionen zählt und bei Erreichen dieser Zahl ein enable (sec_0_ena) Signal auf „high“ setzt. Sobald dieses Signal auf „high“ ist wird der counter_sec_0 um eins erhöht. Das gleiche gilt für alle anderen enable Signale.
Das evening_ena Signal steuert das Zähllimit von counter_hr_0, da dieser Stundenzähler je nachdem ob es abends oder tagsüber ist unterschiedlich hoch zählen muss. Tagsüber muss der Zähler von 0-9 zählen zum Beispiel wenn es 07:00 Uhr bzw. 17:00 Uhr ist. Wenn es hingegen abends ist (ab 20.00 Uhr) darf der Zähler nur bis 3 zählen, damit die Uhr nicht eine unrealistische Uhrzeit wie zum Beispiel 27:00 Uhr anzeigt. Das heisst das Signal evening_ena wird bei einem counter_hr_1 stand von 2 auf „high“ gesetzt.
Sobald die Uhr 23:59:59 +1 Sekunde anzeigt, werden alle Zähler wieder auf null gesetzt.
