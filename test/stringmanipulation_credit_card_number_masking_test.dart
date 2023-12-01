import 'package:stringmanipulation_credit_card_number_masking/stringmanipulation_credit_card_number_masking.dart';
import 'package:test/test.dart';

void main() {
  group('Credit Card Number Masking Tests', () {
    test('Mask credit card number', () {
      expect(
          maskCreditCardNumber('1234567890123456'), equals('XXXXXXXXXXXX3456'));
    });

    test('Short credit card number returns same number', () {
      expect(maskCreditCardNumber('1234'), equals('1234'));
    });

    test('Empty credit card number returns empty string', () {
      expect(maskCreditCardNumber(''), equals(''));
    });
  });
}
