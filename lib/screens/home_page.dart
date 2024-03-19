import 'package:flutter/material.dart';

//stateless
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bolt', style: TextStyle(fontSize: 34)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'I am a child of column',
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'I am a child of column',
                  border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}