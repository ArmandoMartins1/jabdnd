import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/RegPage.dart';

import 'AuthPage.dart';

class CampanhaPage extends StatefulWidget {
  const CampanhaPage({super.key});

  @override
  State<CampanhaPage> createState() => _CampanhaPageState();
}

class _CampanhaPageState extends State<CampanhaPage> {
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
