import 'package:flutter/material.dart';
import 'package:nyuciin/akun_cek.dart';
import './home.dart';
import './login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 50.0, 150.0, 8.0),
                      child: Text('BUAT AKUN',
                          style: TextStyle(
                            color: Color.fromRGBO(157, 104, 210, 1),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/register.png',
                          width: 250,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 1.0),
                      child: SizedBox(
                        height: 90,
                        width: 350,
                        child: TextFormField(
                          autofocus: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(157, 104, 210, 1)),
                            ),
                            hintText: "Full Name",
                            labelText: "Full Name",
                            icon: Icon(
                              Icons.people_alt,
                              color: Color.fromRGBO(157, 104, 210, 1),
                              size: 40,
                            ),
                          ),
                          style: TextStyle(fontSize: 20),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Nama tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 1.0),
                      child: SizedBox(
                        height: 90,
                        width: 350,
                        child: TextFormField(
                          autofocus: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(157, 104, 210, 1)),
                            ),
                            hintText: "Username Anda",
                            labelText: "Username",
                            icon: Icon(
                              Icons.person,
                              color: Color.fromRGBO(157, 104, 210, 1),
                              size: 40,
                            ),
                          ),
                          style: TextStyle(fontSize: 20),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'username tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 1.0),
                      child: SizedBox(
                        height: 90,
                        width: 350,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(157, 104, 210, 1)),
                            ),
                            hintText: "Email Anda",
                            labelText: "Email",
                            icon: Icon(
                              Icons.mail_lock_rounded,
                              color: Color.fromRGBO(157, 104, 210, 1),
                              size: 40,
                            ),
                          ),
                          style: TextStyle(fontSize: 20),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                              return 'masukkan email yang sesuai';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 1.0),
                      child: SizedBox(
                        height: 90,
                        width: 350,
                        child: TextFormField(
                          obscureText: true,
                          autofocus: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(157, 104, 210, 1)),
                            ),
                            hintText: "Password",
                            labelText: "Password",
                            icon: Icon(
                              Icons.lock,
                              color: Color.fromRGBO(157, 104, 210, 1),
                              size: 40,
                            ),
                          ),
                          style: TextStyle(fontSize: 20),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'password tidak boleh kosong';
                            } else if (value.length < 8) {
                              return "Password minimal 8 karakter";
                            } else if (value.length > 10) {
                              return "Password tidak boleh lebih dari 10 karakter";
                            } else
                              return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 1.0),
                      child: SizedBox(
                        height: 90,
                        width: 350,
                        child: TextFormField(
                          obscureText: true,
                          autofocus: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(157, 104, 210, 1)),
                            ),
                            hintText: "Confirm Password",
                            labelText: "Confirm Password",
                            icon: Icon(
                              Icons.security,
                              color: Color.fromRGBO(157, 104, 210, 1),
                              size: 40,
                            ),
                          ),
                          style: TextStyle(fontSize: 20),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'confirm password tidak boleh kosong';
                            } else if (value.length < 8) {
                              return "Masukkan confirm password yang sesuai";
                            } else if (value.length > 10) {
                              return "Masukkan confirm password yang sesuai";
                            } else
                              return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                        height: 60,
                        width: 140,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color.fromARGB(246, 170, 63, 252),
                                  Color.fromRGBO(143, 0, 255, 50),
                                ]),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Color.fromRGBO(
                                          0, 0, 0, 0.57), //shadow for button
                                      blurRadius: 5) //blur radius of shadow
                                ]),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  onSurface: Colors.transparent,
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => LoginPage())),
                                    );
                                  }
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 18,
                                    bottom: 18,
                                  ),
                                  child: Text(
                                    "Buat",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                )))),
                    SizedBox(
                      height: 10,
                    ),
                    CekAkun(
                        login: false,
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        }),
                    SizedBox(
                      height: 70,
                    )
                  ]),
            )));
  }
}
