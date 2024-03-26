import 'package:bolt_clone/screens/my_account.dart';
import 'package:flutter/material.dart';

class HomeLocation extends StatefulWidget {
  const HomeLocation({super.key});

  @override
  State<HomeLocation> createState() => _HomeLocationState();
}

class _HomeLocationState extends State<HomeLocation> {
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
              leading: const Icon(Icons.cancel),
              title: const Text('Home'),              
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
                        hintText: "Search location",
                        border: OutlineInputBorder(),
                        labelText: "Search for a country",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.map),
                        
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