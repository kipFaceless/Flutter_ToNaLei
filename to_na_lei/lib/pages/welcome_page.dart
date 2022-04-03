import 'package:flutter/material.dart';
import 'package:to_na_lei/pages/controllers/auth_controller.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => AuthController.instance.logout(),
              icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: Center(
        child: Text("Welcome Page"),
      ),
    );
  }
}
