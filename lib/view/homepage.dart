import 'dart:ui';
import 'package:conversor_moedas/model/api.dart';
import 'package:conversor_moedas/controller/controller.dart';
import 'package:conversor_moedas/widgets/text_field.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {   

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final Conversor convert = Conversor();
  final ApiHgBrasil api = ApiHgBrasil();  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          "\$Convert",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color.fromRGBO(218, 165, 32, 1.0),
        centerTitle: true,
      ),
      body: FutureBuilder<Map<dynamic, dynamic>>(
        future: api.getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Container(
                  child: Text(
                "Carregando...",
                style: TextStyle(fontSize: 20, color: Colors.amber),
                textAlign: TextAlign.center,
              ));
            default:
              if (snapshot.hasError) {
                return Container(
                    child: Text(
                  "Erro ao Carregar...",
                  style: TextStyle(color: Colors.amber, fontSize: 20),
                  textAlign: TextAlign.center,
                ));
              } else {
                convert.dolar = snapshot.data["results"]["currencies"]["USD"]["buy"];
                convert.euro = snapshot.data["results"]["currencies"]["EUR"]["buy"];
                convert.libra = snapshot.data["results"]["currencies"]["GBP"]["buy"];
                convert.peso = snapshot.data["results"]["currencies"]["ARS"]["buy"];
                convert.dolarcan = snapshot.data["results"]["currencies"]["CAD"]["buy"];
                convert.dolarau = snapshot.data["results"]["currencies"]["AUD"]["buy"];
                convert.yen = snapshot.data["results"]["currencies"]["JPY"]["buy"];
                convert.bitcoin = snapshot.data["results"]["currencies"]["BTC"]["buy"];                

                return SingleChildScrollView(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.monetization_on,
                          size: 150.0, color: Colors.amber),
                      TextCurrencie(
                        label: "Reais",
                        prefix: "R\$ ",
                        control: convert.realControl,
                        func: convert.realChanged,
                      ),
                      TextCurrencie(
                        label: "Dólares",
                        prefix: "\$ ",
                        control: convert.dolarControl,
                        func: convert.dolarChanged,
                      ),
                      TextCurrencie(
                        label: "Euros",
                        prefix: "€ ",
                        control: convert.euroControl,
                        func: convert.euroChanged,
                      ),
                      TextCurrencie(
                        label: "Libra",
                        prefix: "£ ",
                        control: convert.libraControl,
                        func: convert.libraChanged,
                      ),
                      TextCurrencie(
                        label: "Peso Argentino",
                        prefix: "\$ ",
                        control: convert.pesoControl,
                        func: convert.pesoChanged,
                      ),
                      TextCurrencie(
                        label: "Dólar Canadense",
                        prefix: "C\$ ",
                        control: convert.dolarcanControl,
                        func: convert.dolarcanChanged,
                      ),
                      TextCurrencie(
                        label: "Dólar Australiano",
                        prefix: "AU\$ ",
                        control: convert.dolarauControl,
                        func: convert.dolarauChanged,
                      ),
                      TextCurrencie(
                        label: "Yen Japonês",
                        prefix: "¥ ",
                        control: convert.yenControl,
                        func: convert.yenChanged,
                      ),
                      TextCurrencie(
                        label: "Bitcoin",
                        prefix: "₿ ",
                        control: convert.bitcoinControl,
                        func: convert.bitcoinChanged,
                      ),
                    ],
                  ),
                );
              }
          }
        },
      ),
    );
  }
}

// Widget buildTextField(
//     String label, String prefix, TextEditingController control, Function func) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: TextField(
//       controller: control,
//       decoration: InputDecoration(
//         labelStyle: TextStyle(color: Colors.amber, fontSize: 22),
//         labelText: label,
//         enabledBorder:
//             OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
//         focusedBorder:
//             OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
//         prefix: Text(
//           prefix,
//           style: TextStyle(color: Colors.amber, fontSize: 23),
//         ),
//       ),
//       style: TextStyle(fontSize: 23, color: Colors.amber),
//       onChanged: func,
//       keyboardType: TextInputType.numberWithOptions(decimal: true),
//     ),
//   );
// }
