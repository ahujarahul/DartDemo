doTypeCast() {

  print("\n==========================Type Casting Demo==========================================");
  print("String to int :: ${int.parse('1')}");

  print("String to double :: ${double.parse('1.1')}");

  print("int to String :: ${20.toString()}");

  //toStringAsFixed() - takes parameter as number of digits after decimal
  print("double to String :: ${3.14316.toStringAsFixed(2)}");
}