import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/button.dart';
import 'package:flutter_application_1/pages/auth/CampanhaPage.dart';
import 'package:flutter_application_1/pages/auth/MagiasPage.dart';
import 'package:flutter_application_1/pages/auth/PersonagemPage.dart';
import 'AuthPage.dart';
import 'LoginPage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Image(
              image: AssetImage('assets/fundoestrelado.jpg'),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Button(
                        text: 'CAMPANHA',
                        image: 'assets/montanha.png',
                        function: () {
                          Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const CampanhaPage(
                                base64Pdf: '',
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        text: 'PERSONAGENS',
                        image: 'assets/assasin.png',
                        function: () {
                          Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const PersonagemPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        text: 'MAGIAS',
                        image: 'assets/livro.png',
                        function: () {
                          Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const MagiasPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement<void, void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const AuthPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Sair",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
