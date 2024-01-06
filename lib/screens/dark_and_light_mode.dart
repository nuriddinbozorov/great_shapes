import 'package:flutter/material.dart';

class DarkAndLightMode extends StatefulWidget {
  const DarkAndLightMode({super.key});

  @override
  State<DarkAndLightMode> createState() => _DarkAndLightModeState();
}

class _DarkAndLightModeState extends State<DarkAndLightMode> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey[850] : Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.grey[850] : Colors.grey[300],
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: isDarkMode ? Color(0xFF212121) : Colors.grey,
                  offset: Offset(5.0, 5.0),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: isDarkMode ? Color(0xFF424242) : Colors.white,
                  offset: Offset(-5.0, -5.0),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Icon(
              Icons.android,
              size: 80,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    isDarkMode = true;
                  });
                },
                child: Text("Dark", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(width: 24),
              OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    isDarkMode = false;
                  });
                },
                child: Text("Light", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
