import 'package:flutter/material.dart';

class Batch extends StatefulWidget {
  const Batch({Key? key}) : super(key: key);

  @override
  _BatchState createState() => _BatchState();
}

class _BatchState extends State<Batch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(100, (index) {
              return Container(
                child: Card(
                  child: Text(
                    'Item Grid $index',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  color: Colors.white,
                ),
              );
            })));
  }
}
