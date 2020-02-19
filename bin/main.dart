import 'package:DartDemo/DartDemo.dart' as DartDemo;
import 'package:DartDemo/VariablesDemo.dart' as VariablesDemo;
import 'package:DartDemo/FunctionsDemo.dart' as FunctionsDemo;

main(List<String> arguments) {
  print('Hello world, from ${DartDemo.fromLanguage()}');

  VariablesDemo.showMeVariablesDemo();

  //providing values to optional parameters. Here MacOS is not printed in function and hence will be ignored
  print(FunctionsDemo.heyLanguage("Web APIs", "Java", ["Linux","Windows", "MacOS"]));

  //using default values of optional parameters
  print(FunctionsDemo.heyLanguage("Flutter"));

  FunctionsDemo.wontReturn();
}
