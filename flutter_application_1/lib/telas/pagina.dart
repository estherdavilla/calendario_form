import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<Pagina> createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  final List<String> _lista = ['Curso 1', 'Curso 2', 'Curso 3', 'Curso 4','Curso 5', 'Curso 6', 'Curso 7', 'Curso 8'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Cursos"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: _lista.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(' ${_lista[index]}')),
              );
            },
          ),
        ),
      ),
    );
  }
}