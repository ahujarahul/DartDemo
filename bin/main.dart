import 'package:DartDemo/DartDemo.dart' as DartDemo;
import 'package:DartDemo/VariablesDemo.dart' as VariablesDemo;
import 'package:DartDemo/FunctionsDemo.dart' as FunctionsDemo;
import 'package:DartDemo/TypeCastingDemo.dart' as TypeCastingDemo;

main(List<String> arguments) {
  print('Hello world, from ${DartDemo.fromLanguage()}');

  /* ==part 1== */
  VariablesDemo.showMeVariablesDemo();

  /* ==part 2== */
  //providing values to optional parameters. Here MacOS is not printed in function and hence will be ignored
  print(FunctionsDemo.heyLanguage("Web APIs", "Java", ["Linux","Windows", "MacOS"]));

  //using default values of optional parameters
  print(FunctionsDemo.heyLanguage("Flutter"));

  //function will be called with default values
  print(FunctionsDemo.heyPlatform());

  //function will be called with values provided
  print(FunctionsDemo.heyPlatform(versionName: "Catalina", platform: "MacOS", versionCode: 10.15));

  //function will be called with values provided. Note the change in order of parameters
  print(FunctionsDemo.heyPlatform(platform: "Linux", versionCode: 16.2, versionName: "Ubuntu"));

  //function will be called with values provided. Note the change parameters
  print(FunctionsDemo.heyPlatform(versionCode: 10, versionName: "Ten"));

  print(FunctionsDemo.willReturnNull());
  FunctionsDemo.wontReturn();
  print(FunctionsDemo.willReturnInt());
  print(FunctionsDemo.willDecideReturnTypeDynamically(0));
  print(FunctionsDemo.willDecideReturnTypeDynamically("hello"));

  /* ==part 3== */
  TypeCastingDemo.doTypeCast();
}
