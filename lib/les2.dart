// Om iets te kunnen vragen aan de gebruiker heb je dit nodig:
import 'dart:io'; // import betekent: gebruik andere code die al geschreven is
// in dit geval: code die de mensen van dart hebben geschreven.
// dart:io geeft aan dat we de input output (IO) deel van de dart code willen

// zoals altijd begint de code bij main
void main (){
  // om input te lezen van de gebruiker gebruik je:
  stdin.readLineSync(); //stdin staat voor Standard in, dat is waar de gebruiker dingen in kan typen
  // en readLineSync lees een regel. Die 'Sync' betekent: wacht totdat iets is gelezen voordat je verder gaat

  // Om iets met het antwoord van de gebruiker te kunnen doen kun je het bijvoorbeeld in een variabel opslaan
  String antwoord = stdin.readLineSync()!; // let op dat uitroep teken, dat heeft te maken met
  // dat readLineSync niet altijd een string terug geeft, maar soms ook null, maar dat hoef je nog niet te weten

  // Je kunt print gebruiken om een vraag te stellen
  print("Wat is jouw naam?");
  String naam = stdin.readLineSync()!;
  print("Hallo, $naam"); // Om de waarde van een variabel in een string te verwerken kun je '$' gebruiken


  // Dit is een if-statement
  // let op dat er geen ; achter if zit omdat er na if nog de instructie moet volgen
  if (5==5) { // een if-statement maak je met if, daarna een conditie tussen '()' en dan '{}'
    // alles wat binnen de '{}' staat wordt alleen uitgevoerd als de conditie waar is:
    // in dit geval als 5==5 (5 gelijk is aan 5), dat is natuurlijk altijd het geval.
  }
  // Maar als je iets wil doen afhankelijk van wat de gebruiker intypt:
  String groet = stdin.readLineSync()!; // hier zie je dat variabelen heel handig zijn, omdat je groet 2x gebruikt
  // als je stdin.readLineSync direct zou vergelijken met "hallo" of "dag" zou je iets 2x vragen
  if (groet == "hallo") // je ziet dat de '{}' niet verplicht zijn als er maar één instructie volgt
    print("Hallo!"); // If, else en alle andere control statements (we gaan later meer leren) voeren altijd de instructie na de if uit
  // met '{}' voeg je meerdere instructies in één
  // Daarom zijn de '{}' niet verplicht bij maar één instructie
  if (groet == "dag")
    print("Tot ziens!");

  //Dit zijn de mogelijkheden voor condities        voorbeeld
  // == is gelijk aan, je gebruikt dus geen =       5 == 5
  // > groter dan                                   5 > 3
  // >= groter dan of gelijk                        5 >= 5
  // < kleiner dan                                  5 < 13
  // <= kleiner of gelijk                           5 <= 13
  // != is niet gelijk                              5 != 3

  // deze twee voegen twee condities samen
  // || of, als een van de twee of beiden waar zijn, is het waar  5>13 || 5!=6  waar, want de tweede is waar
  // && en, alleen als beide waar zijn, is het waar   5>3 && 5<=5   waar, want beide zijn waar

  //Je hebt ook nog '!', de not. Die maakt alles omgekeerd: dus waar wordt niet waar en omgekeerd
  // ! 5 < 13 waar, want 5 is niet kleiner dan 13
  if (5>2){
    print("5 is groter dan 2");
  }
  else { // als je het iets wil laten uitvoeren als het juist niet waar is
    // gebruik je else
    print("5 is niet groter dan 2");
  }
  // Als je een else if wil doen kun je dat zou doen:
  if (5>2){

  } else if (5<2){ //omdat de '{}' niet verplicht zijn kun je zo een else if maken

  }
  else {

  }


  // Als je stdin.readLineSync doet krijg je altijd tekst, ook als de gebruiker 5 intypt
  // Om van een string naar een getal te gaan gebruik je int.parse
  print("Hoe oud ben jij?");
  String eenString = stdin.readLineSync()!;
  int leeftijd = int.parse(eenString); //int.parse zet een string om in een geheel getal
  // Als je dus iets anders doet dan een geheel getal, zoals een komma getal geeft het een error
  // nu kun je rekenen met de leeftijd, bijvoorbeeld
  print("Over ${18-leeftijd} jaar ben je 18 jaar oud!"); // Je kunt dus ook '${}' gebruiken om een som in een string te verwerken

}