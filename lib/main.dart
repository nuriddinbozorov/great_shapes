import 'package:flutter/material.dart';
import 'package:great_shapes/screens/dark_android.dart';
import 'package:great_shapes/screens/light_android.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Buttons"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.greenAccent),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LightAndroid()),
                );
              },
              child: Text("Light", style: TextStyle(fontSize: 24)),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.greenAccent),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DarkAndroid()),
                );
              },
              child: Text("Dark", style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}
