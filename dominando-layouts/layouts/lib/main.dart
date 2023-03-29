import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //O primeiro widget é o MaterialApp depois tudo vai derivar dele
    return MaterialApp(
        //é uma casca de aplicação melhor do que o Container()
        title: 'titulo da aba',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //É uma boa prácita usar o Scaffold pois ele vem com regras de layouts melhores que o Container. Vem com uma estrutura de aplicativo.
        appBar: AppBar(
          title: Text("meu app"),
        ),
        body: Container(
          width: double.infinity, //oculpar a tela inteira
          color: Colors.red,
          child: ListView(
            //ListView juntos com Column e Rows são muito utilizados para organizar os elementos na pagina do app, principalmente o ListView.
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                color: Colors.yellow,
                child: Text("xxxxx"),
              )
            ],
          ),

          /*
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceAround, //centraliza a coluna alinhamento na vertical
            crossAxisAlignment: CrossAxisAlignment
                .center, //centraliza a coluna alinhamento na horizontal
            children: const <Widget>[
              Text("Item 1"),
              Text("Item 2"),
              Text("Item 3")
            ],
          ),*/
        ));
  }
}
