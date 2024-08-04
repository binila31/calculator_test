

class Calculator {
  String _input = '';
  double? _firstOperand;
  double? _secondOperand;
  String? _operator;

  String processInput(String value) {
    if (_isOperator(value)) {
      _operator = value;
      _firstOperand = double.tryParse(_input);
      _input = '';
    } else if (value == '=') {
      _secondOperand = double.tryParse(_input);
      if (_firstOperand != null && _secondOperand != null && _operator != null) {
        _input = _calculateResult().toString();
      }
    } else if (value == 'C') {
      _reset();
    } else {
      _input += value;
    }
    return _input.isEmpty ? '0' : _input;
  }

  bool _isOperator(String value) {
    return value == '+' || value == '-' || value == '*' || value == '/';
  }

  double _calculateResult() {
    switch (_operator) {
      case '+':
        return _firstOperand! + _secondOperand!;
      case '-':
        return _firstOperand! - _secondOperand!;
      case '*':
        return _firstOperand! * _secondOperand!;
      case '/':
        return _firstOperand! / _secondOperand!;
      default:
        return 0.0;
    }
  }

  void _reset() {
    _input = '';
    _firstOperand = null;
    _secondOperand = null;
    _operator = null;
  }
}
