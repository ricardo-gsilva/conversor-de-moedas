import 'package:conversor_moedas/model/api.dart';
import 'package:flutter/material.dart';

class Conversor {
  ApiHgBrasil api = ApiHgBrasil();  

  final realControl = TextEditingController();
  final dolarControl = TextEditingController();
  final euroControl = TextEditingController();
  final libraControl = TextEditingController();
  final pesoControl = TextEditingController();
  final dolarcanControl = TextEditingController();
  final dolarauControl = TextEditingController();
  final yenControl = TextEditingController();
  final bitcoinControl = TextEditingController();

  double dolar = 0;
  double euro = 0;
  double libra = 0;
  double peso = 0;
  double dolarcan = 0;
  double dolarau = 0;
  double yen = 0;
  double bitcoin = 0;   

  void clearAll() {
    realControl.text = "";
    dolarControl.text = "";
    euroControl.text = "";
    libraControl.text = "";
    pesoControl.text = "";
    dolarcanControl.text = "";
    dolarauControl.text = "";
    yenControl.text = "";
    bitcoinControl.text = "";
  }

  void realChanged(String text) {
    if (text.isEmpty) {
      clearAll();
      return;
    }
    double real = double.parse(text);
    dolarControl.text = (real / dolar).toStringAsFixed(2);
    euroControl.text = (real / euro).toStringAsFixed(2);
    libraControl.text = (real / libra).toStringAsFixed(2);
    pesoControl.text = (real / peso).toStringAsFixed(2);
    dolarcanControl.text = (real / dolarcan).toStringAsFixed(2);
    dolarauControl.text = (real / dolarau).toStringAsFixed(2);
    yenControl.text = (real / yen).toStringAsFixed(2);
    bitcoinControl.text = (real / bitcoin).toStringAsFixed(7);
  }

  void dolarChanged(String text) {
    if (text.isEmpty) {
      clearAll();
      return;
    }
    double dolar = double.parse(text);
    realControl.text = (dolar * this.dolar).toStringAsFixed(2);
    euroControl.text = (dolar * this.dolar / euro).toStringAsFixed(2);
    libraControl.text = (dolar * this.dolar / libra).toStringAsFixed(2);
    pesoControl.text = (dolar * this.dolar / peso).toStringAsFixed(2);
    dolarcanControl.text = (dolar * this.dolar / dolarcan).toStringAsFixed(2);
    dolarauControl.text = (dolar * this.dolar / dolarau).toStringAsFixed(2);
    yenControl.text = (dolar * this.dolar / yen).toStringAsFixed(2);
    bitcoinControl.text = (dolar * this.dolar / bitcoin).toStringAsFixed(7);
  }

  void euroChanged(String text) {
    if (text.isEmpty) {
      clearAll();
      return;
    }
    double euro = double.parse(text);
    realControl.text = (euro * this.euro).toStringAsFixed(2);
    dolarControl.text = (euro * this.euro / dolar).toStringAsFixed(2);
    libraControl.text = (euro * this.euro / libra).toStringAsFixed(2);
    pesoControl.text = (euro * this.euro / peso).toStringAsFixed(2);
    dolarcanControl.text = (euro * this.euro / dolarcan).toStringAsFixed(2);
    dolarauControl.text = (euro * this.euro / dolarau).toStringAsFixed(2);
    yenControl.text = (euro * this.euro / yen).toStringAsFixed(2);
    bitcoinControl.text = (euro * this.euro / bitcoin).toStringAsFixed(7);
  }

  void libraChanged(String text) {
    if (text.isEmpty) {
      clearAll();
      return;
    }
    double libra = double.parse(text);
    realControl.text = (libra * this.libra).toStringAsFixed(2);
    dolarControl.text = (libra * this.libra / dolar).toStringAsFixed(2);
    euroControl.text = (libra * this.libra / euro).toStringAsFixed(2);
    pesoControl.text = (libra * this.libra / peso).toStringAsFixed(2);
    dolarcanControl.text = (libra * this.libra / dolarcan).toStringAsFixed(2);
    dolarauControl.text = (libra * this.libra / dolarau).toStringAsFixed(2);
    yenControl.text = (libra * this.libra / yen).toStringAsFixed(2);
    bitcoinControl.text = (libra * this.libra / bitcoin).toStringAsFixed(7);
  }

  void pesoChanged(String text){
    if (text.isEmpty) {
      clearAll();
      return;
    }
    double peso = double.parse(text);
    realControl.text = (peso * this.peso).toStringAsFixed(2);
    dolarControl.text = (peso * this.peso / dolar).toStringAsFixed(2);
    euroControl.text = (peso * this.peso / euro).toStringAsFixed(2);
    libraControl.text = (peso * this.peso / libra).toStringAsFixed(2);
    dolarcanControl.text = (peso * this.peso / dolarcan).toStringAsFixed(2);
    dolarauControl.text = (peso * this.peso / dolarau).toStringAsFixed(2);
    yenControl.text = (peso * this.peso / yen).toStringAsFixed(2);
    bitcoinControl.text = (peso * this.peso / bitcoin).toStringAsFixed(7);
  }
  void dolarcanChanged(String text){
    if (text.isEmpty) {
      clearAll();
      return;
    }
    double dolarcan = double.parse(text);
    realControl.text = (dolarcan * this.dolarcan).toStringAsFixed(2);
    dolarControl.text = (dolarcan * this.dolarcan / dolar).toStringAsFixed(2);
    euroControl.text = (dolarcan * this.dolarcan / euro).toStringAsFixed(2);
    libraControl.text = (dolarcan * this.dolarcan / libra).toStringAsFixed(2);
    pesoControl.text = (dolarcan * this.dolarcan / peso).toStringAsFixed(2);
    dolarauControl.text = (dolarcan * this.dolarcan / dolarau).toStringAsFixed(2);    
    yenControl.text = (dolarcan * this.dolarcan / yen).toStringAsFixed(2);
    bitcoinControl.text = (dolarcan * this.dolarcan / bitcoin).toStringAsFixed(7);
  }
  void dolarauChanged(String text){
    if (text.isEmpty) {
      clearAll();
      return;
    }
    double dolarau = double.parse(text);
    realControl.text = (dolarau * this.dolarau).toStringAsFixed(2);
    dolarControl.text = (dolarau * this.dolarau / dolar).toStringAsFixed(2);
    euroControl.text = (dolarau * this.dolarau / euro).toStringAsFixed(2);
    libraControl.text = (dolarau * this.dolarau / libra).toStringAsFixed(2);
    pesoControl.text = (dolarau * this.dolarau / peso).toStringAsFixed(2);
    dolarcanControl.text = (dolarau * this.dolarau / dolarcan).toStringAsFixed(2);    
    yenControl.text = (dolarau * this.dolarau / yen).toStringAsFixed(2);
    bitcoinControl.text = (dolarau * this.dolarau / bitcoin).toStringAsFixed(7);
  }
  void yenChanged(String text){
    if (text.isEmpty) {
      clearAll();
      return;
    }
    double yen = double.parse(text);
    realControl.text = (yen * this.yen).toStringAsFixed(2);
    dolarControl.text = (yen * this.yen / dolar).toStringAsFixed(2);
    euroControl.text = (yen * this.yen / euro).toStringAsFixed(2);
    libraControl.text = (yen * this.yen / libra).toStringAsFixed(2);
    pesoControl.text = (yen * this.yen / peso).toStringAsFixed(2);
    dolarcanControl.text = (yen * this.yen / dolarcan).toStringAsFixed(2);
    dolarauControl.text = (yen * this.yen / dolarau).toStringAsFixed(2);    
    bitcoinControl.text = (yen * this.yen / bitcoin).toStringAsFixed(7);
  }
  void bitcoinChanged(String text){
    if (text.isEmpty) {
      clearAll();
      return;
    }
    double bitcoin = double.parse(text);
    realControl.text = (bitcoin * this.bitcoin).toStringAsFixed(2);
    dolarControl.text = (bitcoin * this.bitcoin / dolar).toStringAsFixed(2);
    euroControl.text = (bitcoin * this.bitcoin / euro).toStringAsFixed(2);
    libraControl.text = (bitcoin * this.bitcoin / libra).toStringAsFixed(2);
    pesoControl.text = (bitcoin * this.bitcoin / peso).toStringAsFixed(2);
    dolarcanControl.text = (bitcoin * this.bitcoin / dolarcan).toStringAsFixed(2);
    dolarauControl.text = (bitcoin * this.bitcoin / dolarau).toStringAsFixed(2);
    yenControl.text = (bitcoin * this.bitcoin / yen).toStringAsFixed(7);    
  }
  
}
