import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewBuilderExemplo extends StatefulWidget {
  const ListViewBuilderExemplo({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderExemplo> createState() => _ListViewBuilderExemploState();
}

class _ListViewBuilderExemploState extends State<ListViewBuilderExemplo> {
  final List<String> items = List.generate(50, (index) => "Item $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(title: Text(items[index]));
        },
      ),
    );
  }
}