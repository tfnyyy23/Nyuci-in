import 'package:flutter/material.dart';
import 'package:nyuciin/home.dart';
import 'package:nyuciin/mandiri.dart';
import 'package:nyuciin/bni.dart';
import 'package:nyuciin/bri.dart';
import 'package:nyuciin/pesanan.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  _CheckoutPageState createState() => new _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: new Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.black,
                              size: 40,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => PesananPage())));
                            },
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                              child: Text(
                                "Checkout",
                                style: TextStyle(
                                    fontFamily: 'Anton', fontSize: 35),
                              )),
                        ],
                      )),
                  Column(
                    children: <Widget>[
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50.0, 100.0, 0.0, 0.0),
                          child: Image(
                            image: AssetImage('assets/ceklist.png'),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 100.0, 0.0, 0.0),
                            child: Text(
                              "Laundry",
                              style:
                                  TextStyle(fontFamily: 'Anton', fontSize: 25),
                            )),
                      ]),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 3.0, 0.0, 0.0),
                          child: Text(
                            "Pastikan pakaian sudah siap!",
                            style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: 16,
                                color: Colors.grey),
                          ))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50.0, 30.0, 0.0, 0.0),
                          child: Image(
                            image: AssetImage('assets/ceklist.png'),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                            child: Text(
                              "Alamat",
                              style:
                                  TextStyle(fontFamily: 'Anton', fontSize: 25),
                            )),
                      ]),
                      Padding(
                          padding: EdgeInsets.fromLTRB(50.0, 3.0, 0.0, 0.0),
                          child: Text(
                            "Pastikan anda sudah memasukkan alamat!",
                            style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: 16,
                                color: Colors.grey),
                          ))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50.0, 30.0, 0.0, 0.0),
                          child: Image(
                            image: AssetImage('assets/ceklist.png'),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                            child: Text(
                              "Pembayaran",
                              style:
                                  TextStyle(fontFamily: 'Anton', fontSize: 25),
                            )),
                      ]),
                      Padding(
                          padding: EdgeInsets.fromLTRB(50.0, 3.0, 0.0, 0.0),
                          child: Text(
                            "Pembayaran anda sudah didaftarkan!",
                            style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: 16,
                                color: Colors.grey),
                          ))
                    ],
                  ),
                  Center(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 100.0),
                          child: SizedBox(
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
                                          color: Color.fromRGBO(0, 0, 0,
                                              0.57), //shadow for button
                                          blurRadius: 5) //blur radius of shadow
                                    ]),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      onSurface: Colors.transparent,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) => HomePage())),
                                      );
                                    },
                                    child: Center(
                                        child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 18,
                                          bottom: 18,
                                          left: 0,
                                          right: 0),
                                      child: Text(
                                        "Pesan",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )))),
                          )))
                ],
              ),
            )));
  }
}
