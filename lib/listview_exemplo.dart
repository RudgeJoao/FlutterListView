import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewExemplo extends StatefulWidget {
  const ListViewExemplo({Key? key}) : super(key: key);

  @override
  State<ListViewExemplo> createState() => _ListViewExemploState();
}

class _ListViewExemploState extends State<ListViewExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('ListView'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Item 1'),
          ),
          ListTile(
            title: Text('Item 2'),
          ),
          ListTile(
            title: Text('Item 3'),
          ),
          ListTile(
            title: Text('Item 4'),
          ),
        ],
      ),
    );
  }
}