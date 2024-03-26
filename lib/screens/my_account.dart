import 'package:bolt_clone/screens/communication_preferences.dart';
import 'package:bolt_clone/screens/deleted.dart';
import 'package:bolt_clone/screens/home_location.dart';
import 'package:bolt_clone/screens/languages.dart';
import 'package:bolt_clone/screens/login.dart';
import 'package:bolt_clone/screens/new_place.dart';
import 'package:bolt_clone/screens/work_location.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                 const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS167rCp9mKFPIQo0E5lfr9p2OIqZ2XpU9wgbDkoUC5tQ&s"),
                    radius: 50,),
                const Text("Name"),
                const Text("Phone Number"),
                 const Row(
              children: [
                Icon(Icons.star, color: Color.fromARGB(255, 29, 124, 32)),
                Text('5.0 Rating')
              ],
            ),
            const SizedBox(height: 10,),
            const ListTile(
              leading: Icon(Icons.shield),
              title: Text('Login & Security'),
              
            ),
             const Divider(
              height: 30,
              indent: 10,
            ),
            const ListTile(
              leading: Icon(Icons.message),
              title: Text('E-mail'),
              
            ),
             const Divider(
              height: 30,
              thickness: 10,
            ),
            const Text('Saved places', style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: const Icon(Icons.house),
              title: const Text('Enter home location'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const HomeLocation(),
                  ),
                );
              },
            ),
             const Divider(
              height: 30,
              indent: 10,
            ),
            ListTile(
              leading: const Icon(Icons.backpack),
              title: const Text('Enter work location'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const WorkLocation(),
                  ),
                );
              },
            ),
             const Divider(
              height: 30,
              indent: 10,
            ),
            ListTile(
              leading: const Icon(Icons.plus_one),
              title: const Text('Add a place'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const NewPlace(),
                  ),
                );
              },
            ),
             const Divider(
              height: 30,
              thickness: 10,
            ),
            ListTile(
              leading: const Icon(Icons.web_asset_rounded),
              title: const Text('Language'),
              subtitle: const Text('English - US'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Language(),
                  ),
                );
              },
            ),
             const Divider(
              height: 30,
              indent: 10,
            ),
            ListTile(
              leading: const Icon(Icons.speaker),
              title: const Text('Communication preferences'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CommunicationPreferences(),
                  ),
                );
              },
            ),
             const Divider(
              height: 30,
              thickness: 10,
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Login(),
                  ),
                );
              },
            ),
             const Divider(
              height: 30,
              indent: 10,
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Delete account'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Deleted(),
                  ),
                );
              },
            ),
              ],),)
          ],
        ),
      ),
    );
  }
}