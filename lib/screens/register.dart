import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 245, 228),
      appBar: AppBar(
        title: const Text('Bolt', style: TextStyle(fontSize: 34)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    "Registration",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Name",
                      style: TextStyle(),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Enter First Name",
                        border: OutlineInputBorder(),
                        labelText: "First Name",
                        prefixIcon: Icon(Icons.person)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Last Name",
                        border: OutlineInputBorder(),
                        labelText: "Last Name",
                        prefixIcon: Icon(Icons.person)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "E-mail",
                      style: TextStyle(),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Enter E-mail",
                        border: OutlineInputBorder(),
                        labelText: "E-mail",
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "PhoneNumber",
                      style: TextStyle(),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Enter PhoneNumber",
                        border: OutlineInputBorder(),
                        labelText: "(000)0000-0000",
                        prefixIcon: Icon(Icons.phone_android)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Date Of Birth",
                      style: TextStyle(),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Date Of Birth",
                        border: OutlineInputBorder(),
                        labelText: "DD-MM-YYYY",
                        suffix: Icon(Icons.edit_calendar),
                        prefixIcon: Icon(Icons.calendar_month)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Gender",
                      style: TextStyle(),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Male"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Female"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
