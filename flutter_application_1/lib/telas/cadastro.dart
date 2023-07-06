import 'package:flutter/material.dart';

class Curso extends StatefulWidget {
  const Curso({super.key});

  @override
  State<Curso> createState() => _CursoState();
}

class _CursoState extends State<Curso> {
  // Variáveis de estado (Acima da @override, no 'método build') 
  // As variáveis de estado por padrão começam com '_' (_nomedavariavel)
  // Ao se trabalhar com variáveis utiliza-se a classe 'StatefulWidget'

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _id_cursocontroller = TextEditingController();
  final TextEditingController _descricao_cursocontroller = TextEditingController();
  final TextEditingController _carga_horaria_cursocontroller = TextEditingController();
  String? _selectedModalidade;
  String? _selectedEixo;

  @override // Anotação de subscrita... sobrescrevendo o método que foi definido na classe mãe.
  Widget build(BuildContext context) {
    return Scaffold( //É equivalente a tag <body> do html
      appBar: AppBar(
        title: const Text("Cadastro de Curso"),
        backgroundColor: Colors.lightBlue,
        // actions: [
        //   IconButton(
        //     onPressed: Navigator.pop(context, '/cadastro'), 
        //     icon: icon)
        // ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
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
                    
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: "Modalidade: ",
                      ),
                      value: _selectedModalidade,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedModalidade = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Selecione uma modalidade";
                        }
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: "Qualificação",
                          child: Text("Qualificação"),
                        ),
                        DropdownMenuItem<String>(
                          value: "Aperfeiçoamento",
                          child: Text("Aperfeiçoamento"),
                        ),
                        DropdownMenuItem<String>(
                          value: "Técnico",
                          child: Text("Técnico"),
                        ),
                        DropdownMenuItem<String>(
                          value: "Graduação",
                          child: Text("Graduação"),
                        ),
                        DropdownMenuItem<String>(
                          value: "Pós-Graduação ",
                          child: Text("Pós-Graduação "),
                        ),
                      ],
                    ),

                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: "Eixo: ",
                      ),
                      value: _selectedEixo,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedEixo = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Selecione um Eixo";
                        }
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: "TI",
                          child: Text("TI"),
                        ),
                        DropdownMenuItem<String>(
                          value: "Gestão",
                          child: Text("Gestão"),
                        ),
                        DropdownMenuItem<String>(
                          value: "Beleza",
                          child: Text("Beleza"),
                        ),
                      ],
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