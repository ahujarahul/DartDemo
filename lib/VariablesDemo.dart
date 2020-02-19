showMeVariablesDemo(){
  /**
   * Dart supports built-in data types:
   * numbers
   * doubles
   * strings
   * booleans
   * lists (arrays)
   * maps
   * */
  print("====================================================================");
  /**
   * read answer from - Mahendran Sakkarai
   * https://stackoverflow.com/questions/50431055/what-is-the-difference-between-the-const-and-final-keywords-in-dart
   */
  //const value must be known at the compile time. Below line will give compile time error
//  const date = DateTime.now()
  const firstDegree = 10;
  //const variable cannot be re-assigned a value. Below line will give compile time error
//  firstDegree = 12;
  print("first degree: $firstDegree");

  final highestQualification = "post-graduation";
  //final variable cannot be re-assigned a value. Below line will give compile time error
//  highestQualification = "graduation";
  print("highest qualification: $highestQualification");

  print("====================================================================");
  //run-time values can be assigned to final variable
  final date = DateTime.now();
  print("Date now: $date");

  print("====================================================================");
  //num is a abstract class
  num age = 10;
  //int is a abstract class and extends num
  int myAge = 20;

  age += 20;
  myAge += 30;
  print("Age after manipulation $age");
  print("My Age after manipulation $myAge");

  print("====================================================================");
  age = 10.5;
  print("Age after round ${age.round()}");
  print("Age after round to double ${age.roundToDouble()}");

  //Below line will give compile time error as we cannot assign double to int
//  myAge = 20.5;

  print("====================================================================");
  //double is a abstract class and extends num
  double myDoubleAge = 20.9;
  print("Double age $myDoubleAge");
  print("Double age after floor ${myDoubleAge.floor()}");
  print("Double age after ceil ${myDoubleAge.ceil()}");

  print("====================================================================");
  double pi = 3.146666666;
  print("Pi after floor ${pi.floor()}");
  print("Pi after ceil ${pi.ceil()}");

  print("====================================================================");
  //default value of bool is null
  bool isWorking;
  print("default value of bool :: $isWorking");
  isWorking = false;
  print("is working? $isWorking");
  isWorking = true;
  print("is it working now? $isWorking");

  print("====================================================================");
  String greet = "Hello world";
  print(greet.substring(0,4));
  print(greet.replaceAll("ll", "zz"));

  String sample = "Hello world";
  if(greet == sample) {
    print("both strings are equal");
  } else {
    print("both strings are NOT equal");
  }

  String string1 = "Hello world 123";
  String string2 = "Hello world 1234";
  /*
   * compareTo()
   * 0 if both strings are equals
   * 1 if string1 is longer in length
   * -1 if string2 is longer in length
   *
   * applies to above strings and below condition
   * */
  print("Using compareTo() on string :: ${string1.compareTo(string2)}");

  print("====================================================================");
  List animalList = ["monkey", "gorilla", "lion"];
  print("list contents :: $animalList\n");

  animalList.forEach((f) {
    print(f);
  });

  print("\nlist contains lion? :: ${animalList.contains("lion")}");

  animalList.add("tiger");
  print("list contents after adding :: $animalList");

  animalList.insert(1, "cheetah");
  print("list contents after inserting :: $animalList");

  animalList.removeLast();
  print("removed - ${animalList.removeLast()} - from list");

  animalList.removeAt(0);
  print("list contents after removal :: $animalList");

  print("====================================================================");
  Map<String, int> personDetails = {
    //key : value
    "Roy" : 28,
    "Rick" : 30,
    "Gilly" : 20
  };

  print("Map keys :: ${personDetails.keys}");
  print("Map values :: ${personDetails.values}");
  
  print("${personDetails[personDetails.keys.elementAt(0)]}");
  print("${personDetails["Roy"]}");

  personDetails.forEach((k,v){
    print("$k is $v years old");
  });

  print("====================================================================");
  /*
   * Switch demo - switch is case sensitive
   * Unlike Java, if we do not write break, control will NOT fall through
   * */
  var command = "OPEN";

  switch(command) {
    case "CLOSED":
      print("CLOSED");
      break;

    case "APPROVED":
      print("APPROVED");
      break;

    case "OPEN":
      print("OPEN");
      break;

    case "open":
      print("open");
      break;

    case "PENDING":
      print("PENDING");
      break;

    case "DENIED":
      print("DENIED");
      break;

    default:
      print("fallback, default case");
      break;
  }

  print("====================================================================");
  int counter = 5;

  while(counter > 0) {
    print("inside WHILE :: $counter");
    counter--;
  }

  print("====================================================================");
  const int anotherCounter = 5;

  for(int i = 0; i <= anotherCounter; i++) {
    print("inside FOR :: $i");
  }

}