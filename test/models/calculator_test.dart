import 'package:calculator_test/models/calculator.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('Calculator', () {
    test('Addition', () {
      final calculator = Calculator();
      expect(calculator.processInput('1'), '1');
      expect(calculator.processInput('+'), '0');
      expect(calculator.processInput('1'), '1');
      expect(calculator.processInput('='), '2.0');
    });

    test('Subtraction', () {
      final calculator = Calculator();
      expect(calculator.processInput('5'), '5');
      expect(calculator.processInput('-'), '0');
      expect(calculator.processInput('3'), '3');
      expect(calculator.processInput('='), '2.0');
    });

    test('Multiplication', () {
      final calculator = Calculator();
      expect(calculator.processInput('3'), '3');
      expect(calculator.processInput('*'), '0');
      expect(calculator.processInput('4'), '4');
      expect(calculator.processInput('='), '12.0');
    });

    test('Division', () {
      final calculator = Calculator();
      expect(calculator.processInput('8'), '8');
      expect(calculator.processInput('/'), '0');
      expect(calculator.processInput('2'), '2');
      expect(calculator.processInput('='), '4.0');
    });

    test('Clear', () {
      final calculator = Calculator();
      expect(calculator.processInput('5'), '5');
      expect(calculator.processInput('C'), '0');
    });
  });
}
