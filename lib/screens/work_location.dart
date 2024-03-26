import 'package:bolt_clone/screens/my_account.dart';
import 'package:flutter/material.dart';

class WorkLocation extends StatefulWidget {
  const WorkLocation({super.key});

  @override
  State<WorkLocation> createState() => _WorkLocationState();
}

class _WorkLocationState extends State<WorkLocation> {
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
              title: const Text('Work'),              
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