import 'package:flutter/material.dart';

class LightAndroid extends StatelessWidget {
  const LightAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(5.0, 5.0),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-5.0, -5.0),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Icon(Icons.android, size: 80),
        ),
      ),
    );
  }
}
