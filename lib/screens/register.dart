import 'package:bolt_clone/screens/registration_complete.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _dateController = TextEditingController();
  int _value = 1;
  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1960),
      lastDate: DateTime(2100),
    );
    if (_picked != null){
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 241, 231),
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
                    "Create Account",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    controller: _dateController,
                    readOnly: true,
                    onTap: () {
                      _selectDate();
                    },
                    decoration: const InputDecoration(
                      hintText: "Date Of Birth",
                      border: OutlineInputBorder(),
                      labelText: "DD-MM-YYYY",
                      prefixIcon: Icon(Icons.calendar_month),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Gender",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Create Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        border: OutlineInputBorder(),
                        labelText: "Create Password",
                        prefixIcon: Icon(Icons.key)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Re-enter Password",
                        border: OutlineInputBorder(),
                        labelText: "Confirm Password",
                        prefixIcon: Icon(Icons.key)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const RegistrationComplete(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
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
