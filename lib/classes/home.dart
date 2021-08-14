import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Text(
          "Nama : Yudhan Jeffri Djuniartha \nKelas : XII RPL 6 \nNo Absen : 27"),
      ),
      
    );
  }
}