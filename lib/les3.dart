import 'dart:io'; // dit is nodig om zo meteen input te kunnen gebruiken

// Alles begint weer zoals altijd bij onze main
void main (){
  // Als je een computer duizend keer hetzelfde wil laten doen,
  // zou je duizend keer hetzelfde moeten opschrijven...
  // of je kunt loops gebruiken. Die kunnen in een seconde 1000 keer hetzelfde doen.


  // Dit is een while loop. Hij blijft alles tussen '{}' uitvoeren zolang de conditie waar is
  while (5==5) { // een while lijkt erg op een if, alleen voert het wat tussen de '{}' staat meerdere keren uit
    print("Hallo"); //Dit is natuurlijk een oneindige loop, omdat 5 altijd gelijk is aan 5
    break; // Een loop stopt als de conditie niet meer waar is of als het een break tegenkomt
  }

  // While loops zijn heel handig bijvoorbeeld bij een interactieve prompt,
  // waar je steeds iets vraagt aan de gebruiker totdat hij stop zegt
  String antwoord = ""; // ons antwoord begint leeg
  while (antwoord != "stop"){ // alleen als we stop zeggen moet het stoppen
    antwoord = stdin.readLineSync()!;// dit leest dus telkens het antwoord
    if (antwoord == "hallo")
      print("Hallo!");

    if (antwoord == "dag")
      print("Tot ziens!");
  }

  // In plaats van een while loop kun je ook een do while loop:
  String s; // als je geen beginwaarde geeft dan maak je alleen de variabel
  // als je die later zou willen gebruiken moet je ervoor zorgen dat het een waarde krijgt
  do {
    s = stdin.readLineSync()!; // Hiermee zetten we dus een waarde voor de variabel s,
    if (s == "hallo")         // waardoor we het later gewoon kunnen gebruiken
      print("Hallo!");

    if (s == "dag")
      print("Tot ziens!");
  } while (s!="done"); // let op hier moet wel een ';'
  // Het verschil tussen dit en een gewone while loop is dat dit eerst de do doet
  // en dan pas de conditie checkt
  // Terwijl een while loop nul keer runt als de conditie niet waar is, bijvoorbeeld:
  while (5!=5){
    print("Hallo"); // wordt nooit uitgevoerd, omdat 5 altijd gelijk is aan 5
  }
  // Dit betekent dus dat in het voorbeeld daarboven hij altijd iets aan de gebruiker vraagt
  // en dan pas kijkt of het gelijk is aan 'done' of niet.
  // zo hoef je dus niet meteen een beginwaarde te geven aan 's' (of 'antwoord')


  // Als je een programma 100 keer hetzelfde wil laten doen,
  // kun je daar een while loop voor gebruiken:
  int teller = 1; // Deze teller houdt bij hoe vaak het al is herhaald
  while (teller <= 100) { // Pas na 100 keer moet het stoppen
    // Dit wordt 100 keer uitgevoerd
    print("Hallo, teller: $teller");
    teller++; // Is hetzelfde als teller += 1 is hetzelfde als teller = teller +1
  }

  // Maar als je zoiets wilt doen kan dat veel makkelijker met een for-loop
  // Een for-loop bestaat uit drie delen: de initializer, de conditie en de herhaling.
  // De initializer runt een keer voordat de loop begint,
  // de conditie is de conditie van de while loop en de herhaling runt na elke herhaling van de loop
  for (int teller=1; teller<=100; teller++){ // Dart vindt het niet erg dat je twee keer dezelfde variabel hebt,
    // omdat deze variabel bij de for-loop hoort, je kunt het dus ook niet buiten de loop gebruiken

    // Dit doet precies hetzelfde als het vorige programma, maar je schrijft het eenvoudiger
    print("Hallo, teller$teller");
  } // Ook kun je hierdoor die teller++ niet vergeten.



  // Je hebt al geleerd over variabelen, daarmee kun je een ding bewaren.
  // Met lijsten kun je meerdere waarden in een variabel bewaren
  // Het type van een lijst is List en je maakt het dus zoals elk ander variabel
  List lijst = ["Hallo",15.6,"Allemaal"]; // Net zoals je '""' gebruikt voor tekst,
  // gebruik je '[]' om lijsten te maken daarin kun je waarden met komma's ertussen zetten

  // Om te lezen uit een lijst gebruik je '[index]'
  print(lijst[1]); // Let op computers beginnen met tellen bij 0,
  // dus dit is het tweede element: 15.6
  // om een element te veranderen gebruik je '[index] =', bijvoorbeeld:
  lijst[0] = "Dag";
  print(lijst); // Nu is het eerste element 'Dag'

  //Lijsten kunnen voor een probleem zorgen, neem nou het volgende voorbeeldje:
  print(lijst[0]+lijst[1]); // Error, want dit is gelijk aan '"Dag"+15.6' en dat kan niet.
  // Toch geeft de computer meteen een error als je '"Dag"+15.6' intypt
  print("Dag"+15.6); //Error, dit is heel handig, want voordat je het programma runt, weet je al dat het misgaat
  // In het geval van de lijst weet je het pas wanneer je het programma runt
  // Dit is de reden dat je types hebt bij variabelen
  // Want ook hier weet de computer meteen dat het niet werkt
  String groet = "Dag";
  double getal = 15.6;
  print(groet+getal); // Error, omdat je tegen dart hebt gezegd dat
                      // groet altijd een String is en getal altijd een double

  // Om dit probleem bij lijsten om op te lossen kun je extra informatie geven over de type
  // In plaats van List kun je List<E> doen
  List<String> typeLijst= ["Hier","alleen","strings"];
  // Die '<E>' is extra informatie die doorgegeven wordt aan List
  // Zo weet dart voordat hij het programma runt dat 'typeLijst[2]' een string is:
  print(typeLijst[2]+15.6); //Error, want hij weet dat typeLijst alleen strings heeft
  // Wat er eigenlijk gebeurt als je List zonder '<E>' erbij doet,
  // is dat hij er zelf List<dynamic> van maakt.
  // Dat is een speciale type dat alles accepteert en pas bij het runnen errors geeft

  // We gaan hier later meer op in, je hoeft dit dus nog niet helemaal te snappen.


  // Er bestaat ook een andere for-loop: die werkt met lijsten:
  for (String s in typeLijst){ //Deze for-loop bestaat uit een variabel (s), in en dan een lijst
    // Binnen zo een for-loop zal de variabel (s) steeds de volgende element uit het lijst hebben
    print(s); //Dit is heel handig om iets met de hele lijst te doen, zoals printen
  }
  // Maar ook om de som van een lijst te berekenen
  int som =0; // De som begint op nul
  for (int getal in [1,5,7,2,8]){ // De lijst hoeft dus geen variabel te zijn
    som+=getal; // Elk getal van de lijst toevoegen aan som
  }
  print(som);

}