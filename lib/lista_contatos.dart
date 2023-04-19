import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:listview_demo/contato.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  //Lista de contatos

  final List<Contato> contatos = [
    Contato('Flavio', 'FlavioVicentin@gmail.com'),
    Contato('Joao', "JoaoRudge@gmail.com"),
    Contato('Cauê', "CauePalma@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contatos'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: CircleAvatar(child: (Text(contatos[index].nome.substring(0,1))),),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
            );
        },
        ),
    );
  }
}