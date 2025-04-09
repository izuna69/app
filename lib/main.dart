import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            width: 360,
            height: 640,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Container(
                  height: 120,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 48),
                  ),
                ),
                Container(
                  height: 20,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'MC',
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                Expanded(
                  child: GridView.count(
                    crossAxisCount: 4,
                    padding: EdgeInsets.all(8),
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: [
                      for (var label in [
                        '%', 'CE', 'C', '⌫',
                        '⅟x', 'x²', '√x', '÷',
                        '7', '8', '9', '×',
                        '4', '5', '6', '−',
                        '1', '2', '3', '+',
                        '+/-', '0', '.', '='
                      ])
                        Container(
                          decoration: BoxDecoration(
                            color: getButtonColor(label),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            label,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color getButtonColor(String label) {
    const numberButtons = [
      '7', '8', '9',
      '4', '5', '6',
      '1', '2', '3',
      '+/-', '0', '.'
    ];

    if (label == '=') {
      return Colors.lightBlue;
    } else if (numberButtons.contains(label)) {
      return Colors.grey.shade700;
    } else {
      return Colors.grey.shade800;
    }
  }
}
