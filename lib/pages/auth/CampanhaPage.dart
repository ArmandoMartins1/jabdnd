import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_filex/open_filex.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_1/pages/auth/MenuPage.dart';
import 'package:flutter_application_1/pages/auth/RegPage.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'AuthPage.dart';

class CampanhaPage extends StatefulWidget {
  const CampanhaPage({super.key, required this.base64Pdf});

  final String base64Pdf;

  @override
  State<CampanhaPage> createState() => _CampanhaPageState();
}

class _CampanhaPageState extends State<CampanhaPage> {
  var _openResult = 'Unknown';

  Future<void> openFile() async {
    const filePath = '/storage/emulated/0/Download/Flutter.jpg';
    final result = await OpenFilex.open(filePath);

    setState(() {
      _openResult = "type=${result.type}  message=${result.message}";
    });
  }

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
              padding: EdgeInsets.only(top: 350),
              child: InkWell(
                onTap: () => launchUrl(Uri.parse(
                    'https://drive.google.com/file/d/1xhB5CIc0O84W7Khqza1mSeNN1Wsz6dkw/view?usp=sharing')),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'A Mina Perdida de Phandelver \n Nivel: 1-5',
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

  base64Pdf({required String pdfPath}) {}
}


// https://bibliotecaelfica.org/download/a-mina-perdida-de-phandelver-v1-7xh2ui1r1itjomsnlblv6i9zi/