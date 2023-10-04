import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/userData.dart';

import 'AuthPage.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  bool viewPassword = false;

  TextEditingController nameTextController = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Stack(children: [
        Image(
          image: AssetImage(
            'assets/fundo.png',
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
              Text(
                'REGISTRAR-SE',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              TextField(
                controller: nameTextController,
                autofocus: true,
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.white, fontSize: 16),
                decoration: InputDecoration(
                  labelText: "Nome:",
                  labelStyle: TextStyle(color: Colors.red.shade100),
                ),
              ),
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
                    labelText: "Senha:",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 16),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          viewPassword = !viewPassword;
                        });
                      },
                      child: Image.asset(
                        'assets/eye.png',
                      ),
                    )),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            userData.SetName(nameTextController.text);
                          });
                        },
                        child: Text(
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
            ],
          ),
        ),
      ])),
    );
  }
}
