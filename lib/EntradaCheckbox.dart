import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool? _comidaBrasileira = false;
  bool? _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: [
            //CheckBox Lista
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do Rio"),
              //activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
              onChanged: (valor) {
                setState(() {
                  _comidaBrasileira = valor;
                });
              },
            ),

            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("Para quem gosta de comida 'caliente'"),
              //activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (valor) {
                setState(() {
                  _comidaMexicana = valor;
                });
              },
            ),

            ElevatedButton(
              onPressed: () {
                print("Comida Brasileira ->" +
                    _comidaBrasileira.toString() +
                    " Comida Mexicana ->" +
                    _comidaMexicana.toString());
              },
              child: Text("Salvar"),
            ),

            //CheckBox Normal
            /* Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (valor) {
                setState(() {
                  _estaSelecionado = valor;
                });
              },
            ), */
          ],
        ),
      ),
    );
  }
}
