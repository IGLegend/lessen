// main is een functie die dart aanroept als je op run drukt
// Alle dart programma's beginnen met deze functie, later gaan we meer over functies leren
// void betekent dat main niets terug geeft aan dart
void main () {
  // je programma begint dus hier tussen de '{}'


  print("Hello, world!"); // met print stuur je tekst naar de gebruiker
  // print is een functie en daarom gebruik je '()', wat binnen '()' zit geeft hij door aan print
  // als je letterlijk tekst wilt doen gebruikt je '""'
  // aan het einde van elke instructie komt een ';'


  // om informatie op te slaan gebruik je variabelen
  int a = 5; // een variable bestaat uit drie onderdelen:
  // de type (int), de naam (a) en de beginwaarde (5) en vergeet niet de ';'
  // hiermee sla je het getal 5 op in de variabel a
  // int staat voor integer (geheel getal), daarom moet a altijd een geheel getal hebben
  // de mogelijke types zijn:
  // int      geheel getal
  // double   komma getal
  // String   tekst (string of characters)

  // op plekken waar je een getal verwacht kun je ook a zetten
  print(a);
  print(a+5); //maar ook

  // als je een variabel wilt veranderen
  a = 2; //hoef je niet weer int op te schrijven, want a bestaat al
  print(a);
  //maar je kunt het niet naar iets anders dan een geheel getal veranderen
  a = "Hallo"; //Error

  // Als je een getal toe wilt voegen aan een variabel kun je niet dit doen:
  int getal = 0;
  print(getal + 5); // geeft 5
  print(getal); // maar dit geeft 0, omdat 'getal + 5' niet de variabel verandert
  // Dit komt dus omdat, als je de computer een som geeft, hij het berekent,
  // maar hij slaat de resultaat nergens op tenzij je dat tegen hem zegt.

  //Daarom moet je dit doen:
  getal = getal + 5; // Hiermee berekent hij de uitkomst en slaat het dan op in de variabel
  // Hij lost eerst de som op en verandert dan de variabel
  // Daardoor betekent dit eigenlijk nieuwe getal is gelijk aan oude getal + 5.
  print(getal); // 5

  // Omdat het vervelend kan zijn om dit helemaal op te moeten schrijven, kun je dit ook korter schrijven:
  getal += 5; // is hetzelfde als 'getal = getal + 5'
  print(getal); // 10
  // Dit kan ook met -,* en /
  // variabel += waarde           variabel = variabel + waarde
  // variabel -= waarde           variabel = variabel - waarde
  // variabel *= waarde           variabel = variabel * waarde (keer)
  // variabel /= waarde           variabel = variabel / waarde (gedeeld door)

  // Als je maar één wilt optellen of aftrekken aan een variabel kun je dat ook zo doen:
  int teller = 0;
  teller++; // teller is nu 1, want dit is hetzelfde als teller += 1
  // Dit geeft eerste teller terug en dan pas verandert het de variabel, dus
  print(teller++); // 1, want eerst print het de teller (wat 1 was)
  // en dan pas wordt teller 2, als je eerst wil optellen (of aftrekken) kan je het zo doen:
  print(++teller); // 3, want het optellen gebeurt voor het printen
  // Dit werkt precies zo met aftrekken:
  print(--teller); //2, eerst aftrekken (wordt 2) en dan printen


  // Dit is een 'comment', dat betekent dat de computer dit negeert,
  // maar voor ons mensen is het best handig om bijvoorbeeld uitleg te geven over je code
  // Of voor een les zoals deze.
  // Ze zijn heel handig als andere mensen naar je code gaan kijken, maar ook voor jezelf:
  // Als je naar code kijkt die je een jaar geleden hebt geschreven is het handig om zo een comment te hebben.
  /*
    Om een comment te maken kun je net zoals hierboven '//' gebruiken,
    dan wordt de hele regel een comment.
    Of je kunt '/*' gebruiken om een comment te beginnen en '*/' om een comment te sluiten
  */

}