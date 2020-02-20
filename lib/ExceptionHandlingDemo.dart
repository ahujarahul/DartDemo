/*
* At this time, Dart has two in-built exception classes
* 1. IntegerDivisionByZeroException
* 2. FormatException
* These classes extend Exception class
* */

demonstrateExceptionHandling() {
  try {
    print("====================================================================");
    //uncomment below line for FormatException
//    print("String to int :: ${int.parse('a')}");

    //for IntegerDivisionByZeroException
    print("Div by 0 :: ${100 ~/ 0}");
  }
  //handle know/ expected exception
  on FormatException catch (formatExceptionException) {
    print("FormatException --> ${formatExceptionException.message}");
  }
  //other exceptions will be caught here
  catch (exception) {
    //cannot print message here as the object received is of class Exception
    print("Exception occurred --> ${exception.toString()}");
  } finally {
    print(">> finally block runs after exception has occurred");
  }
}

//throwing exception
num calculateSquareRoot(int number) {
  print("====================================================================");
  if(number <= 0) {
    throw FormatException("Cannot calculate square root of zero or a negative number.");
  } else {
    return getSquareRoot(number);
  }
}

num getSquareRoot(int number) {
  return number * number;
}