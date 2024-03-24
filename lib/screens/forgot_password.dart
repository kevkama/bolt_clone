import 'package:bolt_clone/screens/recovery_request.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 241, 231),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0,300.0,10.0,0.0),
          child: Column(
            children: [
              const Text("Forgot Password?", style: TextStyle(fontSize: 25),),
              const SizedBox(
                    height: 50,
                  ),
                  const Text("Enter your E-mail adress to reset your password", style: TextStyle(fontSize: 15),),
              const SizedBox(
                    height: 50,
                  ),
              const TextField(
                // style: ,
                      decoration: InputDecoration(                       
                        hintText: "Enter Email",
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        prefixIcon: Icon(Icons.mail),
                      ),
                    ),
                    const SizedBox(
                    height: 50,
                  ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const RecoveryRequest(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigoAccent,
                      ),
                      child: const Text(
                        "Recover Account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}