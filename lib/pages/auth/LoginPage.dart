import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/AuthPage.dart';
import 'package:flutter_application_1/pages/auth/MenuPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool viewPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Stack(
        children: [
          Image(
            image: AssetImage(
              'assets/fundoestrelado.jpg',
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                ),
                // Text(
                //   'JOGADOR',
                //   style: TextStyle(color: Colors.white, fontSize: 24),
                // ),
                TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    decoration: InputDecoration(
                      labelText: "Email do usuário:",
                      labelStyle: TextStyle(color: Colors.red.shade100),
                    )),
                TextField(
                  obscureText: !viewPassword,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Senha do usuário:',
                    labelStyle: TextStyle(color: Colors.red.shade100),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          viewPassword = !viewPassword;
                        });
                      },
                      child: Image.asset(
                        'assets/eye.png',
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement<void, void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const MenuPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "Entrar",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Container(
                      width: 100,
                      child: TextButton(
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
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Esqueci minha senha',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
