/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/stringmanipulation_credit_card_number_masking_base.dart';

/*
Practice Question 2: Credit Card Number Masking

Task:

Write a function that masks all but the last four characters of 
a credit card number with Xs. For example, 1234567890123456 should be converted to XXXXXXXXXXXX3456.
 */

String maskCreditCardNumber(String cardNumber) {
  try {
    String partToReplace = cardNumber.substring(0, cardNumber.length - 4);
    return (cardNumber.replaceAll(partToReplace, 'X' * partToReplace.length));
  } on RangeError catch (e) {
    print("RangeError Exception! Error: $e; Returning original string.");
    return cardNumber;
  }
}
