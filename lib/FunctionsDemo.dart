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

/*
* Not we are not providing data types of the function parameters while defining the function.
* This will help the function to be called with different data types
* */
String heyPlatform({versionName = "Pie", platform = "Android", versionCode = 9}) {
  print("====================================================================");
  return "Hi I am $platform, my latest version is $versionName and code is $versionCode";
}

//This is a function that returns null if return type or 'void' is not mentioned in function signature
willReturnNull() {
  print("====================================================================");
  print("Hey, I am function which returns null!");
}

void wontReturn() {
  print("====================================================================");
  print("Hey, I am function which does not return anything!");
}

//Note: we are returning a value from the function and return type is not mentioned in function signature
willReturnInt() {
  print("====================================================================");
  print("Hey, I am function which returns an int!");
  return 1;
}

willDecideReturnTypeDynamically(data) {
  print("==========================Dynamic Return Type==========================================");
  if(data == 0) {
    return 0;
  } else if(data == "hello") {
    return "returned type is string";
  }
}