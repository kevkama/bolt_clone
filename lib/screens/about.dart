import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _SupportState();
}

class _SupportState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [Text('THIS IS THE About PAGE')],
          ),
        ),
      ),
    );
  }
}
