import 'package:flutter/material.dart';

class BoltFood extends StatefulWidget {
  const BoltFood({super.key});

  @override
  State<BoltFood> createState() => _BoltFoodState();
}

class _BoltFoodState extends State<BoltFood> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              Text('This is the bolt food page')
            ],
          ),),
      ),
    );
  }
}