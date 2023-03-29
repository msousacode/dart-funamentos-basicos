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
        color: Colors.blue,
        child: Center(child: Text("XXXXXX")),
      ),
    );
  }
}
