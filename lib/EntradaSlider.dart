import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valor = 0;
  String _label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
            Slider(
              value: _valor,
              min: 0,
              max: 10,
              label: _label,
              divisions: 10,
              activeColor: Colors.blue,
              inactiveColor: Colors.black26,
              onChanged: (nvalor) {
                setState(() {
                  _valor = nvalor;
                  _label = nvalor.toString();
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Valor Selecionado : " + _valor.toString());
              },
              child: Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
