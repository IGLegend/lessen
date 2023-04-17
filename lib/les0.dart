import 'dart:io';
import 'dart:math';

//   // Spel maken
//   // maak willekeurig getal tussen 1 en 100
//   // moet hij jou vragen om het getal te raden
//   // Zeggen of je het goed hebt
//   // of je getal te hoog is of te laag
//   // weer vragen getal te raden

Random r = Random();
int randomInt(int min,int max){
  return r.nextInt(max-min) + min;
}


void main(){
  int getal = randomInt(1, 100);
  print("Raad het getal!");
  int vraag = int.parse(stdin.readLineSync()!);

  while(vraag != getal){
    if (vraag > getal){
      print("Onjuist, het is te hoog!");
    }

    if (vraag < getal){
      print("Onjuist, het is te laag!");
    }

    vraag = int.parse(stdin.readLineSync()!);
  }

  print("Goed gedaan, je hebt het geraden!");

//   // ; en types
//   //print
//   print("Hello, world!");
//
//   //variabelen
//   // weer types
//   int i = 5;
//   String a = "Hello";
//   double d = 3.14;
//   print(a);
//
//
//   //if (else)
//   // haakjes bij één statement niet verplicht
//   // == is gelijk aan
//   // > groter dan
//   // >= groter dan of gelijk
//   // < kleiner dan
//   // <= kleiner of gelijk
//   // !=
//
//   // || of
//   // && en
//
//   if (i == 5 || i > 3) {
//     print("hallo!");
//   // omdat haakjes niet verplicht zijn, kun je zo een elif maken
//   } else if (a == "hello" && i < 6 ){
//     i = 3;
//   }
//
//   //loops
//   //while loop
//   while (i>0){
//     print(i--);
//
//   }
//
//   //for loop
//   // begin; conditie; herhaling
//   for (int a =1; a < 5; a++){
//     print(a);
//   }
//   String? s = stdin.readLineSync();
//   print("hallo $s");
//
//
//   //Lijst
//
//   List<String> l = ["Hallo","Dag"];
//   Map<String, int> m  = {"Hallo":5, "a": 33};
//   print(l[1]);
//   print(m["a"]);
//
//   int b = calculate(2,3);
//   print(b);
// }
//
//
// int calculate(int een, int twee){
//   return een + twee;
//

}