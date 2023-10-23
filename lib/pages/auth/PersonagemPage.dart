import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/MenuPage.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonagemPage extends StatefulWidget {
  const PersonagemPage({super.key});

  @override
  State<PersonagemPage> createState() => _PersonagemPageState();
}

class _PersonagemPageState extends State<PersonagemPage> {
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
              padding: EdgeInsets.all(30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 300),
              child: InkWell(
                onTap: () => launchUrl(Uri.parse(
                    'https://i0.wp.com/jogaod20.com/wp-content/uploads/2020/09/ficha-tradicional-em-portugues.png?resize=518%2C670&ssl=1')),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Burgell Lingehall \n Bardo nivel 1',
                      style: TextStyle(
                          fontSize: 24,
                          decoration: TextDecoration.underline,
                          color: Colors.purple),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 400),
              child: InkWell(
                onTap: () => launchUrl(Uri.parse('https://fastcharacter.com/')),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Novo Personagem',
                      style: TextStyle(
                          fontSize: 24,
                          decoration: TextDecoration.underline,
                          color: Colors.purple),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 480),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const MenuPage(),
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
    );
  }
}
