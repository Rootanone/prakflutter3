import 'package:flutter/material.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 167, 146, 155),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2),
          ),
          Center(
            child: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
            child: Icon(
              Icons.account_circle,
              size: 100,
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60),
                  child: Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90),
                  child: Text('Syarifuddin'),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, top: 40),
                  child: Icon(Icons.card_membership, size: 50),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 40),
                  child: Text('1462100106'),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, top: 40),
                  child: Icon(Icons.mail, size: 50),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 40),
                  child: Text('sesi1'),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, top: 40),
                  child: Icon(Icons.location_city, size: 50),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 40),
                  child: Text('surabaya'),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, top: 40),
                  child: Icon(Icons.facebook_sharp, size: 50),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 40),
                  child: Text('none_uddin'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
