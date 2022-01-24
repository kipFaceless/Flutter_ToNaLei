import 'package:flutter/material.dart';

class ToNaleiLogin extends StatefulWidget {
  const ToNaleiLogin({Key? key}) : super(key: key);

  @override
  _PaizanaLoginState createState() => _PaizanaLoginState();
}

class _PaizanaLoginState extends State<ToNaleiLogin> {
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
                  color: const Color(0xFF000000).withOpacity(0.77),
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
                top: 460,
                left: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Container(
                        width: 60,
                        child: Center(
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                                color: Color(0xFFE49516), fontSize: 10.0),
                          ),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            width: 1.0, color: Color(0xFFE49516)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 35.0,
                      child: MaterialButton(
                        color: const Color(0xFFE49516),
                        onPressed: () {},
                        child: const Text(
                          "Registrar",
                          style: TextStyle(color: Colors.black, fontSize: 11.0),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
