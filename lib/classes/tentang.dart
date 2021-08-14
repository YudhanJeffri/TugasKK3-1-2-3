import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  const Tentang({ Key? key }) : super(key: key);

  @override
  _TentangState createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
       child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              "Mondemy adalah aplikasi pelatihan berbasis bootcamp gratis untuk montir sekaligus menyalurkan ke perusahaan yang sudah terikat kontrak dengan Mondemy. \n\nMondemy\nMontir Academy.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              // textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      
    ),
    );
  }
}