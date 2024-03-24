import 'package:flutter/material.dart';

class RegistrationComplete extends StatelessWidget {
  const RegistrationComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color.fromARGB(255, 231, 241, 231),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0,100.0,10.0,0.0),
          child: Column(
            children: [
              Text("Welcome",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),),
               Text("A confirmation link has been sent to your email"),
               Text("Thank You"),
            ],
          ),
        ),
      ),
    );
  }
}