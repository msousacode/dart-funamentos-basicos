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
    items.add(Item(title: "title1", done: false));
    items.add(Item(title: "title2", done: false));
    items.add(Item(title: "title3", done: false));
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //prepara uma propriedade para receber os dados digitados na tela.
  var task = TextEditingController();

  //Cria uma acao para o botao.
  void add() {
    setState(() {
      widget.items.add(
        Item(title: task.text, done: false),
      );
      task.text = "";
    });
  }

  //Cria a acao de remover
  void remove(int index) {
    setState(() {
      widget.items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: task, //Faz o binding do input que recebe os dados.
          keyboardType: TextInputType.text, //Exibe o teclado de e-mail
          style: const TextStyle(color: Colors.amber, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext contexts, int index) {
          final item = widget.items[index];

          return Dismissible(
              //Adiciona um efeito de arrastar para a direita ou para a esquerda
              key: Key(item.title),
              background: Container(
                color: Colors.red.withOpacity(0.2),
                child: const Text("Excluir"),
              ),
              onDismissed: (direction) {
                //Realiza a acao remove depois de terminar o arrastar.
                remove(index);
              },
              child: CheckboxListTile(
                  //é a lista de checkboxs
                  title: Text(item.title),
                  value: item.done,
                  onChanged: (value) {
                    setState(() {
                      item.done = value;
                    });
                  }));
        },
      ),
      //Adiciona um botao na tela
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.phone),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
