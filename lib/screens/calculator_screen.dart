import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {

  String _display = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              _display,
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                fontFamily: 'Digital',
              )
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Row 1: Clear and operations
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: _buildOperationButton('C', () {
                          return '0';
                        })),
                        Expanded(child: _buildDisplayButton('±')),
                        Expanded(child: _buildDisplayButton('%')),
                        Expanded(child: _buildDisplayButton('÷')),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Row 2: 7, 8, 9, ×
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: _buildDisplayButton('7')),
                        Expanded(child: _buildDisplayButton('8')),
                        Expanded(child: _buildDisplayButton('9')),
                        Expanded(child: _buildDisplayButton('×')),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Row 3: 4, 5, 6, -
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: _buildDisplayButton('4')),
                        Expanded(child: _buildDisplayButton('5')),
                        Expanded(child: _buildDisplayButton('6')),
                        Expanded(child: _buildDisplayButton('-')),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Row 4: 1, 2, 3, +
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: _buildDisplayButton('1')),
                        Expanded(child: _buildDisplayButton('2')),
                        Expanded(child: _buildDisplayButton('3')),
                        Expanded(child: _buildDisplayButton('+')),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Row 5: 0 (double width), ., =
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(flex: 2, child: _buildDisplayButton('0')), // Double width
                        Expanded(child: _buildDisplayButton('.')),
                        Expanded(child: _buildOperationButton('=', () {
                          // Calculate the result from display operation
                          return _calculateResult();
                        })),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]
      )
    );
  }

  Widget _buildDisplayButton(String text) {

    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (_display == "0") {
            _display = text;
          } else {
            _display += text;
          }
        });
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _buildOperationButton(String text, String Function() onPressed) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _display = onPressed();
        });
      },
      child: Text(text, style: const TextStyle(fontSize: 24)),
    );
  }

  String _calculateResult() {
    try {
      String expression = _display
          .replaceAll('×', '*')
          .replaceAll('÷', '/');

      GrammarParser parser = GrammarParser();
      Expression exp = parser.parse(expression);
      ContextModel context = ContextModel();
      RealEvaluator evaluator = RealEvaluator(context);
      double result = evaluator.evaluate(exp).toDouble();
      
      // Clean up the result (remove unnecessary decimals)
      if (result == result.roundToDouble()) {
        return result.round().toString();
      } else {
        return result.toString();
      }
    } catch (e) {
      return 'Error';
    }
  }
}