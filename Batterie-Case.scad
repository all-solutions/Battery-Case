/* [Definitionen] */
//Virtuelle Komponenten zeigen
DEBUG = true;
//Interface-Board vorhanden?
IntBoard = true;
/* [Ansichten] */
//Innenansicht ohne Seitenwände und Deckel
Innenansicht = true;
//"Frontplatte" zeigen
Front = true;
/* [Material-Daten (alle anderen Maße werden aus den Batterie-Daten errechnet)] */
//Materialdicke (mm)
Dicke = 15; 
/* [Batterie-Daten (werden für die Berechnung der Case-Größe benötigt)] */
//Batterie-Höhe (mm)
BattHoehe = 145;
//Batterie-Breite (mm)
BattBreite = 340;
//Batterie-Länge (mm)
BattLaenge = 400;
/* [Hidden] */
$fn=128;
$preview=128; 
Laenge = BattLaenge+20;
Breite = BattBreite+70;
Hoehe = BattHoehe+65;

if (DEBUG) {
#translate ([Dicke,Dicke+62,Dicke]) resize([BattLaenge,BattBreite,BattHoehe], auto=true) import ("BattPack2.stl");

translate ([Laenge-80,57,Hoehe-110]) rotate([90,180,0]) scale([0.66,0.66,0.66]) color("red") import ("DALY-BMS.stl");
if (Front && IntBoard) { 
    translate ([Laenge-210,01,Hoehe-100]) rotate([90,0,0]) color("red") import ("DALY-InterfaceBoard-TEST.stl");
    }
}

if (!Innenansicht) {
    translate ([0,Dicke,0]) color("green") cube(size = [Dicke,Breite,Hoehe+Dicke]); //linke Seite

    difference() {
        translate ([Laenge+Dicke,Dicke,0]) color("green") cube(size = [Dicke,Breite,Hoehe+Dicke]); //rechte Seite
       translate ([Laenge+Dicke,Dicke+30,30]) rotate ([0,90,0]) cylinder(d=30, h=Dicke);  
        translate ([Laenge+Dicke,Dicke+15,Dicke]) cube(size = [Dicke,30,15]);
    }

    translate ([0,Dicke,Dicke+Hoehe]) cube(size = [Laenge+(2*Dicke),Breite,Dicke]); //Deckel
}


translate ([Dicke,Dicke,0]) cube(size = [Laenge,Breite,Dicke]); //Boden


if (Front) { 
    difference() {
        translate ([0,0,0]) color("blue") cube(size = [Laenge+(2*Dicke),Dicke,Hoehe+(2*Dicke)]); //Vorderseite
        if (IntBoard) {
            translate ([Laenge-200,0,Hoehe-75]) cube(size = [180,Dicke,57]); //Ausschnitt für InterfaceBoard
        }
    }
}

translate ([Dicke,60,Dicke]) color("blue") cube(size = [Laenge,Dicke,BattHoehe+10]); //Vorderseite Zwichenbrett
translate ([0,Dicke+Breite,0]) color("blue") cube(size = [Laenge+(2*Dicke),Dicke,Hoehe+(2*Dicke)]); //Rückseite

//Ausgabe der Bretter-Abmessungen in der Konsole
echo(Links_LxB=Breite,Hoehe+Dicke);
echo(Rechts_LxB=Breite,Hoehe+Dicke);
echo(Deckel_LxB=Laenge+(2*Dicke),Breite);
echo(Boden_LxB=Laenge,Breite);
echo(Rueckseite_LxB=Laenge+(2*Dicke),Hoehe+(2*Dicke));
echo(Vorderseite_LxB=Laenge+(2*Dicke),Hoehe+(2*Dicke));
echo(Zwischenbrett_LxB=Laenge,BattHoehe+10);

