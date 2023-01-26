import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(35),
                      child: Text('MASUK AKUN',
                          style: TextStyle(
                            color: Color.fromRGBO(157, 104, 210, 1),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(height: 20),
                    Image(
                      image: AssetImage('assets/login.png'),
                    ),
                  ]),
            )));
  }
}
