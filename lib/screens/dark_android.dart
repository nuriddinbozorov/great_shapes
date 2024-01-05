import 'package:flutter/material.dart';

class DarkAndroid extends StatelessWidget {
  const DarkAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF212121),
                offset: Offset(5.0, 5.0),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Color(0xFF424242),
                offset: Offset(-5.0, -5.0),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Icon(Icons.android, size: 80, color: Colors.white),
        ),
      ),
    );
  }
}
