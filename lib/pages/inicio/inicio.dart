import 'package:corona_atual/pages/home/home.dart';
import 'package:corona_atual/utils/button.dart';
import 'package:corona_atual/utils/nav.dart';
import 'package:corona_atual/utils/text.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 60)),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Container(child: Image.asset("assets/img/foto2.png")),
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Colors.lightBlue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Texto(
                            "Mantenha-se atualizado sobre os resultadas da pandamenia que assola o nosso país e o mundo!",
                            fontWeight: FontWeight.bold,
                            size: 25,
                            color: Colors.white,
                            center: true,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Texto(
                          "Proteja a si e a sua família!",
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 30)),

                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Button(
                          "Entrar",
                          () =>push(context, Homepage(),replace: true),
                          color: Color.fromRGBO(62, 68, 101, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
