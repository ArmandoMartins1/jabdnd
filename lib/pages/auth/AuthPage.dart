import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/LoginPage.dart';
import 'package:flutter_application_1/pages/auth/CampanhaPage.dart';
import 'package:flutter_application_1/pages/auth/RegPage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  /*Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(children: [
          Image(
            image: AssetImage('assets/wpd.png'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ]),
      ),
    );
  }*/
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/fundoestrelado.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
            padding: EdgeInsets.only(top: 70),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png'),
              ],
            )),
        Container(
          margin: EdgeInsets.only(top: 350),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Guia D&D',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/adventurer.png',
                      ),
                      const Text(
                        'JOGADOR',
                        style: TextStyle(fontSize: 32),
                      ),
                    ],
                  ),
                ),
              ),
              // Container(
              //     child: TextButton(
              //         onPressed: () {
              //           Navigator.pushReplacement<void, void>(
              //             context,
              //             MaterialPageRoute<void>(
              //               builder: (BuildContext context) => const MLogin(),
              //             ),
              //           );
              //         },
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Image.asset('assets/mestre.png'),
              //             const Text(
              //               'MESTRE',
              //               style: TextStyle(fontSize: 32),
              //             ),
              //           ],
              //         ))),
              Container(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => RegPage(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/sword.png'),
                          const Text(
                            'REGISTRAR-SE',
                            style: TextStyle(fontSize: 32),
                          ),
                        ],
                      )))
            ],
          ),
        )
      ],
    );
  }
}
