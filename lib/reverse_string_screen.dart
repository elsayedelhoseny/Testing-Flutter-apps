import 'package:flutter/material.dart';

class ReverseStringScreen extends StatefulWidget {
  const ReverseStringScreen({super.key});

  @override
  ReverseStringScreenState createState() => ReverseStringScreenState();
}

class ReverseStringScreenState extends State<ReverseStringScreen> {
  final TextEditingController controller = TextEditingController();
  String reversedString = '';

  void reverseString() {
    setState(() {
      reversedString = controller.text.split('').reversed.join('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Reverse String App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: 'Enter a string',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: reverseString,
                child: const Text('Reverse'),
              ),
              const SizedBox(height: 20),
              Text(
                reversedString,
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
