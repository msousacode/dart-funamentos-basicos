import 'package:flutter/material.dart';
import 'package:todo/models/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Madrid',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  //agora pode gerenciar estado das propriedades quando transformado de Statelees para Stateful.

  var items = <Item>[];

  HomePage({super.key}) {
    items = [];
    items.add(Item(title: "title1", done: true));
    items.add(Item(title: "title2", done: true));
    items.add(Item(title: "title3", done: true));
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To List"),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext contexts, int index) {
          return Text(widget.items[index].title);
        },
      ),
    );
  }
}
