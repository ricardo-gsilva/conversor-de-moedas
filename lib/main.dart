import 'package:conversor_moedas/view/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenConversor(),
    );
  }
}

class ScreenConversor extends StatefulWidget {
  @override
  _ScreenConversorState createState() => _ScreenConversorState();
}

class _ScreenConversorState extends State<ScreenConversor> {
  @override
  void initState() {
    super.initState();
    splash();
  }

  void splash() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image(
            image: AssetImage("images/splash_screen/fundobackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width * .5,
            child: Image(
              image: AssetImage("images/splash_screen/logoConversor.png"),
            ),
          ),
        ),
      ],
    );
  }
}
