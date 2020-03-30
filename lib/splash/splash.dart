import 'package:corona_atual/pages/inicio/inicio.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: InicioPage(),
      title: Text(
        "AngoVid",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      //image: Image.asset('assets/img/logo.png'),
      backgroundColor: Colors.blue,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.white,
    );
  }
}
