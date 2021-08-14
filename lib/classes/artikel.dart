import 'package:flutter/material.dart';
import 'package:tugas1_yudhan/model/artikelModel.dart';

class Artikel extends StatefulWidget {
  const Artikel({Key? key}) : super(key: key);

  @override
  _ArtikelState createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: [
          new ListArtikel(image: "https://cdn.bukuwarung.com/wp-content/uploads/2020/04/Menentukan-Lokasi-Bengkel-Motor.png" , title: "Menentukan Lokasi"),
          new ListArtikel(image: "https://cdn.bukuwarung.com/wp-content/uploads/2020/04/Menentukan-Modal-Awal.png" , title: "Menentukan Modal Awal"),
          new ListArtikel(image: "https://cdn.bukuwarung.com/wp-content/uploads/2020/04/Merincikan-Biaya-Peralatan-dan-Operasional.png", title: "Merincikan Biaya"),
          new ListArtikel(image: "https://cdn.bukuwarung.com/wp-content/uploads/2020/04/Mencari-Montir-yang-Dapat-Di-Andalkan.png", title: "Mencari Montir"),
          new ListArtikel(image: "https://cdn.bukuwarung.com/wp-content/uploads/2020/04/Menyediakan-Sparepart.png", title: "Menyediakan Sparepart"),
          new ListArtikel(image: "https://cdn.bukuwarung.com/wp-content/uploads/2020/04/Pengelolaan-dan-Layanan.png", title: "Pengelolaan dan Layanan"),
          new ListArtikel(image: "https://cdn.bukuwarung.com/wp-content/uploads/2020/04/Mengatur-Strategi-Promosi.png", title: "Mengatur Strategi Promosi"),
         
        ],
      ),
    );
  }
}

class ListArtikel extends StatelessWidget {
  ListArtikel({required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20),
      child: new Center(
        child: new Row(
          children: [
            new Image(
              image: NetworkImage(
                  image),
              width: 100,
            ),
            new Container(
              
              padding: EdgeInsets.all(20),
              
              child: new Center(
                
                child: new Column(
                  
                  
                  children: [
                    new Text(
              title,
              style: new TextStyle(fontSize: 15),
            ),
            
                  ],
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
