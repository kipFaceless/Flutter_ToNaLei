import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_na_lei/pages/ui/auth/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ToNaleiLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'lib/images/iPhone 13 Pro Max - 17.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  width: 699,
                  height: 555,
                  child: Container(
                    color: const Color(0xFF000000).withOpacity(0.83),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 100,
                  child: Image.asset(
                    'lib/images/Logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                Positioned(
                  top: 410,
                  left: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(
                        backgroundColor: Color(0xFFE49516),
                        strokeWidth: 2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Center(
                        child: Text(
                          'Carregando...',
                          style: TextStyle(
                              color: Color(0xFFE49516), fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
