
import 'package:flutter/material.dart';
import '../widgets/calculator_button.dart';
import '../models/calculator.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final Calculator calculator = Calculator();
  String output = '0';

  void _handleButtonPress(String value) {
    setState(() {
      output = calculator.processInput(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              child: Text(
                output,
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                _buildButtonRow(['7', '8', '9', '/']),
                _buildButtonRow(['4', '5', '6', '*']),
                _buildButtonRow(['1', '2', '3', '-']),
                _buildButtonRow(['C', '0', '=', '+']),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonRow(List<String> buttonLabels) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttonLabels.map((label) {
          return CalculatorButton(
            label: label,
            onPressed: _handleButtonPress,
          );
        }).toList(),
      ),
    );
  }
}

