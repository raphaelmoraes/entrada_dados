import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: [
            //Switch tipo de lista
            SwitchListTile(
              title: Text("Receber Notificações"),
              value: _escolhaUsuario,
              onChanged: (valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ),

            ElevatedButton(
              onPressed: () {
                if (_escolhaUsuario) {
                  print("Receber notificações");
                } else {
                  print("Não receber notificações");
                }
              },
              child: Text("Salvar"),
            ),

            /* Switch(
              value: true,
              onChanged: (valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ),
            Text("Receber Notificações"), */
          ],
        ),
      ),
    );
  }
}
