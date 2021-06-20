import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String _escolhaUsuario = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: [
            //Radio em formato de lista
            RadioListTile(
              title: Text("Masculino"),
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (valor) {
                setState(() {
                  _escolhaUsuario = valor.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (valor) {
                setState(() {
                  _escolhaUsuario = valor.toString();
                });
              },
            ),

            ElevatedButton(
              onPressed: () {
                print("Resultado -> " + _escolhaUsuario);
              },
              child: Text("Salvar"),
            ),

            //Radio Simples
            /* Text("Masculino"),
            Radio(
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (valor) {
                setState(() {
                  _escolhaUsuario = valor.toString();
                });
                print("Resultado ->" + valor.toString());
              },
            ),
            Text("Feminino"),
            Radio(
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (valor) {
                setState(() {
                  _escolhaUsuario = valor.toString();
                });
                print("Resultado ->" + valor.toString());
              },
            ), */
          ],
        ),
      ),
    );
  }
}
