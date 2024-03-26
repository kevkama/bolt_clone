import 'package:flutter/material.dart';

class Deleted extends StatelessWidget {
  const Deleted({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color.fromARGB(255, 231, 241, 231),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0,100.0,10.0,0.0),
          child: Column(
            children: [
              Text("Account deleted",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),),
               Text("We are sad to see you leave"),
               Text("Good bye"),
            ],
          ),
        ),
      ),
    );
  }
}