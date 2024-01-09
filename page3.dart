import 'package:flutter/material.dart';
import 'package:prak1/widget/listmovie.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _Page3State();
}

class _Page3State extends State<page3> {
  bool tekan = false;

  List movie = [
    {"img": "assets/img/alien.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/yoda.png"},
    {"img": "assets/img/alien.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Page3'),
          backgroundColor: Color.fromARGB(255, 108, 26, 61)),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            SizedBox(
              width: 400,
              height: 570,
              child: ListView.builder(
                itemCount: movie.length,
                itemBuilder: (context, index) {
                  return listMovie(img: movie[index]['img']);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
