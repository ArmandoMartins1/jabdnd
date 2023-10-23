import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/MenuPage.dart';
import 'package:url_launcher/url_launcher.dart';

class MagiasPage extends StatefulWidget {
  const MagiasPage({super.key});

  @override
  State<MagiasPage> createState() => _MagiasPageState();
}

class _MagiasPageState extends State<MagiasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Image(
              image: AssetImage('assets/fundoestrelado.jpg'),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 350),
              child: InkWell(
                onTap: () => launchUrl(
                    Uri.parse('https://avribacki.gitlab.io/magias5e/')),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Magias 5a Edição',
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
              padding: EdgeInsets.only(top: 450),
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
