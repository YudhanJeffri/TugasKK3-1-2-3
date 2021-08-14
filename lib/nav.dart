import 'package:flutter/material.dart';
import 'package:tugas1_yudhan/classes/Artikel.dart';
import 'package:tugas1_yudhan/classes/Batch.dart';
import 'package:tugas1_yudhan/classes/home.dart';
import 'package:tugas1_yudhan/classes/tentang.dart';

class MyNav extends StatefulWidget {
  const MyNav({ Key? key }) : super(key: key);

  @override
  _MyNavState createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold );
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Batch(),
    Artikel(),
    Tentang()

  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mondemy'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
        
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration),
            label: 'Batch',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            label: 'Artikel',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tentang',
            backgroundColor: Colors.grey,
          ),
        ],
         currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}