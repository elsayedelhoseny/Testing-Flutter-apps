import 'package:flutter/material.dart';
import 'package:testing/reverse_string_screen.dart';

void main() {
  runApp(const ReverseStringApp());
}

class ReverseStringApp extends StatelessWidget {
  const ReverseStringApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReverseStringScreen(),
    );
  }
}
