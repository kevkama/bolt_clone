import 'package:flutter/material.dart';

class CommunicationPreferences extends StatefulWidget {
  const CommunicationPreferences({super.key});

  @override
  State<CommunicationPreferences> createState() => _CommunicationPreferencesState();
}

class _CommunicationPreferencesState extends State<CommunicationPreferences> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              Text("Communication""\n" "preferences", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
              ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text('Promotions & Tips'),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => const Payment(),
              //     ),
              //   );
              // },
            ),
            Divider(height: 1,),
            ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text("Bolt's Products"),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => const Payment(),
              //     ),
              //   );
              // },
            ),
            Divider(height: 1,),
            ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text('Travelling'),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => const Payment(),
              //     ),
              //   );
              // },
            ),
            Divider(height: 1,),
            ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text('Partner Offers'),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => const Payment(),
              //     ),
              //   );
              // },
            ),
            Divider(height: 1,),
            ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text('Suggestions'),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => const Payment(),
              //     ),
              //   );
              // },
            ),
              ],
          ),
        ),
      ),
    );
  }
}
