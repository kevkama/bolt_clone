import 'package:bolt_clone/screens/about.dart';
import 'package:bolt_clone/screens/bolt_food.dart';
import 'package:bolt_clone/screens/expenses.dart';
import 'package:bolt_clone/screens/my_account.dart';
import 'package:bolt_clone/screens/payment.dart';
import 'package:bolt_clone/screens/promotions.dart';
import 'package:bolt_clone/screens/rides.dart';
import 'package:bolt_clone/screens/support.dart';
import 'package:flutter/material.dart';

//stateless
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 238, 217),
      appBar: AppBar(
        title: const Text('Bolt', style: TextStyle(fontSize: 34)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Name'),
              subtitle: const Text('My Account',
                  style: TextStyle(color: Colors.green)),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const MyAccount(),
                  ),
                )
              },
            ),
            const Row(
              children: [
                Icon(Icons.star, color: Color.fromARGB(255, 29, 124, 32)),
                Text('5.0 Rating')
              ],
            ),
            const Divider(
              height: 30,
              thickness: 10,
            ),
            ListTile(
              leading: const Icon(Icons.wallet),
              title: const Text('Payment'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Payment(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.card_membership),
              title: const Text('Promotions'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Promotions(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock_clock),
              title: const Text('My Rides'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Rides(),
                  ),
                )
              },
            ),
             ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Expense Your Rides'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Expenses(),
                  ),
                );
              },
            ),
             ListTile(
              leading: const Icon(Icons.query_builder),
              title: const Text('Support'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Support(),
                  ),
                );
              },
              
            ),
             ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const About(),
                  ),
                );
              },
            ),
            const Divider(
              height: 10,
              thickness: 10,
            ),
             ListTile(
              leading: const Icon(Icons.kitchen),
              title: const Text('Bolt Food'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const BoltFood(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'I am a child of column',
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'I am a child of column',
                  border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
