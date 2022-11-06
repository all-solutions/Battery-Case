# Battery-Case
Case für DYI-PV-Batterien

<img src="https://github.com/all-solutions/Battery-Case/blob/a726379ed169d9b65da41fff0225eb2b2451d68d/docs/Screenshot.jpg">

OpenSCAD-Sketch zum automatischen erstellen von einem Batterie-Case für DYI-PV-Batterien. Das Sketch errechnet automatisch anhand der Größe der einzubauenden Batterie die Größe des Cases. 
Hierfür "einfach" die Materialstärke und die Abmessungen der Batterie eingeben:
<img src="https://github.com/all-solutions/Battery-Case/blob/c3a0115b158bdf7ba44fb37641e114f987c862b8/docs/Customizer.jpg">

Weitere Anzeige-"Features":
- Im Sketch sind "virtuelle Kompomenten" integriert. So könnt ihr direkt sehen, ob es mit dem Abmessungen des Cases passt.
- "Innenansicht ohne Seitenteile und Deckel": ist standardmässig aktiviert, damit man auch in das Innere schauen kann ;-).
- "Interface-Board": DALY hat neuerdings ein Interface-Board im Programm (Bild siehe weiter unten). Solltet ihr das haben, ich habe dafür bereits eine Frontplatte für den 3D-Druck entwickelt (STL ist hier mit bei). Diese kann dann mit in die Vorschau integriert werden. Dann wird auch der Ausschnitt dafür in der Frontplatte angezeigt.
- "Frontplatte zeigen": man kann die vorderste Platte des Cases ausblenden, um die Platte dazwischen zu sehen.
- "Materialdicke": hier bitte angeben, welche Dicke das verwendete Material hat.

OpenSCAD gibt euch nach eurer Eingabe der gewünschten Batteriegröße in der Konsole die Maße der einzelnen Bretter in ECHO-Zeilen an:
<img src="https://github.com/all-solutions/Battery-Case/blob/0272b15a463d7a964c8cf7c92f52cd3854234cbb/docs/Konsole.jpg">

Der Sketch ist (noch) im BETA-Stadium, ihr könnt es aber gerne schon einmal testen. Feedback gerne erwünscht, ich werde eh irgendetwas übersehen ;-).

Und hier das oben versprochene Bild zum Interface-Board:

<img src="https://github.com/all-solutions/Battery-Case/blob/83d2e1ea840be4174542f93e3e1e045b53d0024f/docs/InterfaceBoard.jpg">

Es unterstützt alle möglichen Protokolle (sowohl RS485 als auch CAN) zur Kommunikation mit PV-Invertern.

<b>Auf keinem Fall mit einem vorhandenen BMS verbinden!</b> Das Teil wird an den Power-Board Anschluß angeschlossen. Entweder DALY kann den Port softwaremässig über ein Firmware-Update anpassen oder es geht nur bei neueren BMS (meins ist von 10/2022).

Die Doku zu dem Board habe ich ebenfalls, liegt im Ordner /docs/InterfaceBoard/. 

Mindestvorraussetzung für die Konfiguration: PCMaster >= 2.x.x (liegt in /docs/InterfaceBoard/Software/)
