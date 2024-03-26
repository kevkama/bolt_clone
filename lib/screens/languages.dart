import 'package:bolt_clone/screens/my_account.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  ListTile(
              leading: const Icon(Icons.arrow_back),
              title: const Text('Select a language'),              
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const MyAccount(),
                  ),
                );
              },
            ),
            const TextField(
                    decoration: InputDecoration(
                        hintText: "select a country",
                        border: OutlineInputBorder(),
                        labelText: "Search for a country",
                        
                  ),
                ),
                const Language(),
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}