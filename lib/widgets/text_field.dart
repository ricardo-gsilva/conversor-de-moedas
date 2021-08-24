import 'package:flutter/material.dart';

class TextCurrencie extends StatelessWidget {

  String label;
  String prefix;
  TextEditingController control;
  Function func;

  TextCurrencie({this.control, this.func, this.label, this.prefix});

  @override
  Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: control,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.amber, fontSize: 22),
              labelText: label,
              enabledBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
              prefix: Text(
                prefix,
                style: TextStyle(color: Colors.amber, fontSize: 23),
              ),
            ),
            style: TextStyle(fontSize: 23, color: Colors.amber),
            onChanged: func,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
          ),
      );
  }
  
}

                        
