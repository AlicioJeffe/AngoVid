import 'package:corona_atual/classes/api.dart';
import 'package:corona_atual/classes/data.dart';
import 'package:corona_atual/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
              child: Scaffold(
            drawer: Drawer(
                child: UserAccountsDrawerHeader(
                    accountName: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Texto(
                        "Desenvolvido por : Alício Jefferson",
                        color: Colors.white,
                      ),
                    ),
                    accountEmail: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Texto("Aliciogasparvicente@gmail.com",
                          color: Colors.white),
                    ))),
            appBar: AppBar(
              title: Texto(
                "AngoVid",
                fontWeight: FontWeight.bold,
                size: 28,
                color: Colors.black,
              ),
              bottom: TabBar(tabs: [
                Tab(
                  text: "Resultados",
                ),
                Tab(
                  text: "Dicas de prevenção",
                )
              ]),
            ),
            body: TabBarView(children: [
              primeiro(context),
              segundo(context),
            ])),
      ),
    );
  }

  segundo(context) => Container(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            cardFoto(
              context,
              "assets/img/rosto.jpg",
              "Evite colocar as maos no rosto antes de levá-las",
            ),
            cardFoto(
              context,
              "assets/img/lavar.jpg",
              "Lavar as mãos com sabão por 20 segundos.",
            ),
            cardFoto(
              context,
              "assets/img/talheres.jpg",
              "Limpe objectos de uso colectivo.",
            ),
            cardFoto(
              context,
              "assets/img/cumprimentar.jpg",
              "Evite cumprimentar.",
            ),
            cardFoto(
              context,
              "assets/img/denuncia.png",
              "Em caso de denúncia ou emergência , ligue para o 111 - CISP.",
            )
          ],
        )),
      );

  cardFoto(context, String pathImg, String texto) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  pathImg,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Texto(
                    texto,
                    fontWeight: FontWeight.bold,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  primeiro(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: Color.fromRGBO(224, 225, 250, 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Texto(
                        "Últimos resultados",
                        center: true,
                        fontWeight: FontWeight.bold,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 100,
                  child: FutureBuilder(
                      future: CallApi().dados(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        Data dados = snapshot.data;

                        return ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 200,
                                child: Card(
                                    child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Texto(
                                        "Casos confirmados :",
                                        color: Colors.black54,
                                        size: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Texto(
                                        dados.confirmed.toString(),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 200,
                                child: Card(
                                    child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Texto(
                                        "Mortes confirmadas :",
                                        color: Colors.black54,
                                        size: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Texto(
                                        dados.deaths.toString(),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 200,
                                child: Card(
                                    child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Texto(
                                        "Suspeitas :",
                                        color: Colors.black54,
                                        size: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Texto(
                                        dados.suspects.toString(),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            ),
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
