/*
* Functions in dart work as in other languages. They have a return type but if
* return type is not known, we can return an 'Object'. Also, like Kotlin, Dart
* supports default value parameters and they must always be at the end. They are
* represented and written inside [] and are optional
* */

String heyLanguage(String usage, [String langName = "Dart", List<String> platforms = const ["android", "iOS"]]) {
  print("====================================================================");
  return "Hi I am $langName, I am used for $usage and I run on ${platforms[0]}, ${platforms[1]}";
}

wontReturn() {
  print("====================================================================");
  print("Hey, I am function which does not return anything!");
}