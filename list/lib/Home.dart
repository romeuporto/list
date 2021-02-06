import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];
  void _carregarItens(){
    for(int i=0; i<=10; i++){
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título ${i} Lorem ipsum dolor sit amet.";
      item["descricao"] = "Descrição ${i} Lorem ipsum dolor sit amet.";
      _itens.add(item);
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, indice){
              print("item ${indice}");

              return ListTile(
                title: Text(indice.toString()),
                subtitle: Text("subtitulo"),
              );
            }
        ),
      )
    );
  }
}

