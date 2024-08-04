import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
 // final Function onPressed;
  final Function(String) onPressed;
  CalculatorButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => onPressed(label),
        child: Text(label, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}


