import 'package:flutter/material.dart';
import 'package:to_na_lei/pages/controllers/auth_controller.dart';

class LoginFormPage extends StatefulWidget {
  const LoginFormPage({Key? key}) : super(key: key);

  @override
  _LoginFormPageState createState() => _LoginFormPageState();
}

class _LoginFormPageState extends State<LoginFormPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  color: const Color(0xFF000000).withOpacity(0.82),
                ),
              ),
              Positioned(
                top: 150,
                left: 35,
                child: Container(
                  width: 250,
                  height: 45,
                  child: Center(
                    child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "seu@gmail",
                          fillColor: const Color(0xFFFFFFFF).withOpacity(0.17),
                          filled: true, // dont forget this line
                        )),
                  ),
                ),
              ),
              Positioned(
                  top: 210,
                  left: 35,
                  child: Container(
                    width: 250,
                    height: 45,
                    child: Center(
                      child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Palavra-passe",
                            fillColor:
                                const Color(0xFFFFFFFF).withOpacity(0.17),
                            filled: true, // dont forget this line
                          )),
                    ),
                  )),
              Positioned(
                  top: 265,
                  left: 35,
                  child: Container(
                      width: 250,
                      height: 50,
                      child: Center(
                        child: ButtonTheme(
                          minWidth: 250.0,
                          height: 40.0,
                          child: MaterialButton(
                            color: const Color(0xFFE49516),
                            onPressed: () {
                              AuthController.instance.register(
                                  emailController.text.trim(),
                                  passwordController.text.trim());
                            },
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                          ),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
