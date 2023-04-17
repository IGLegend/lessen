
// Alle dart programma's beginnen zo
// Dit is een functie die dart aanroept als je op run drukt
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

  // Dit is een 'comment', dat betekent dat de computer dit negeert,
  // maar voor ons mensen is het best handig
  /*
    Om een comment te maken kun je net zoals hierboven '//' gebruiken,
    dan wordt de hele regel een comment.
    Of je kunt '/*' gebruiken om een comment te beginnen en '*/' om een comment te sluiten
  */

}