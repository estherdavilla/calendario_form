import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //É equivalente a tag <head> do html
      title: "BaseApp",
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple  
      ),

      debugShowCheckedModeBanner: false,
      home: const Curso(),
    );
  }
}

class Curso extends StatefulWidget {
  const Curso({super.key});

  @override
  State<Curso> createState() => _CursoState();
}

class _CursoState extends State<Curso> {
  // Variáveis de estado (Acima da @override, no 'método build') 
  // As variáveis de estado por padrão começam com '_' (_nomedavariavel)

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _id_cursocontroller = TextEditingController();
  final TextEditingController _descricao_cursocontroller = TextEditingController();
  final TextEditingController _carga_horaria_cursocontroller = TextEditingController();
  final TextEditingController _modalidadecontroller = TextEditingController();
  final TextEditingController _eixocontroller = TextEditingController();

  @override // Anotação de subscrita... sobrescrevendo o método que foi definido na classe mãe.
  Widget build(BuildContext context) {
    return Scaffold( //É equivalente a tag <body> do html
      appBar: AppBar(
        title: const Text("Cadastro de Curso"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _id_cursocontroller,
                      decoration: const InputDecoration(
                        labelText: "ID: ",
                      ),
                      validator: (value) {
                        
                      },
                    ),
                    
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _descricao_cursocontroller,
                      decoration: const InputDecoration(
                        labelText: "Descrição: ",
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return "Campo Obrigatório";
                        }
                      },
                    ),
                    
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _carga_horaria_cursocontroller,
                      decoration: const InputDecoration(
                        labelText: "Carga Horária: ",
                      ),
                      validator: (value) {
                        
                      },
                    ),
                    
                    TextFormField(
                      controller: _modalidadecontroller,
                      decoration: const InputDecoration(
                        labelText: "Modalidade: ",
                      ),
                      validator: (value) {
                        
                      },
                    ),
                    
                    TextFormField(
                      controller: _eixocontroller,
                      decoration: const InputDecoration(
                        labelText: "Eixo: ",
                      ),
                      validator: (value) {
                        
                      },
                    ),
                    
                    ElevatedButton(
                      onPressed: (){
                        if (_formKey.currentState!.validate()){
                        }
                        debugPrint("Cadastrado com sucesso!");
                      },
                      child: const Text("Cadastrar"))
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }
}