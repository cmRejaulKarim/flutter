import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Changer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const ColorChanger(),
    );
  }
}

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color _bgColor = Colors.white;
  final Random _random = Random();

  void _changeColor() {
    setState(() {
      _bgColor = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _bgColor,
        body: Center(
          child: Text(
            "Tap anywhere to change color!",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
