import 'package:flutter/material.dart';
import 'package:nyuciin/home.dart';
import 'package:nyuciin/pesanan.dart';
import 'package:nyuciin/checkout.dart';
import 'package:google_fonts/google_fonts.dart';

class BniPage extends StatefulWidget {
  const BniPage({super.key});

  @override
  _BniPageState createState() => new _BniPageState();
}

class _BniPageState extends State<BniPage> {
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
                    padding: EdgeInsets.fromLTRB(250.0, 80.0, 0.0, 0.0),
                    child: ElevatedButton(
                      child: Text(
                        "BATALKAN",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Anton',
                          color: Colors.red,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onSurface: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => PesananPage())),
                        );
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 80.0, 0.0, 0.0),
                      child: Text(
                        "Buat Pesanan",
                        style: TextStyle(fontFamily: 'Anton', fontSize: 35),
                      )),

                  Padding(
                      padding: EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 0.0),
                      child: Text(
                        "Alamat",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 0.0, 0.0),
                    child: Text(
                      "Pick Up",
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(50.0, 10.0, 30.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(143, 0, 255, 50),
                            ), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 0.0, 0.0),
                    child: Text(
                      "Drop Down",
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(50.0, 10.0, 30.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(143, 0, 255, 50),
                            ), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(40.0, 40.0, 0.0, 0.0),
                      child: Text(
                        "Perkiraan Berat",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      )),
                  // Padding(
                  //     padding: EdgeInsets.fromLTRB(50.0, 10.0, 100.0, 0.0),
                  //     child: TextField(
                  //       decoration: InputDecoration(
                  //         enabledBorder: OutlineInputBorder(
                  //           borderSide: BorderSide(
                  //             width: 1,
                  //             color: Color.fromRGBO(143, 0, 255, 50),
                  //           ), //<-- SEE HERE
                  //           borderRadius: BorderRadius.circular(50.0),
                  //         ),
                  //       ),
                  //     )),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(50.0, 10.0, 30.0, 0.0),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(143, 0, 255, 50),
                                ), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 30.0, 0.0),
                        child: Text(
                          "Kg / Rp",
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(143, 0, 255, 50),
                                ), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(40.0, 40.0, 0.0, 0.0),
                      child: Text(
                        "Metode Pembayaran",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      )),

                  Padding(
                      padding: EdgeInsets.fromLTRB(50.0, 20.0, 0.0, 0.0),
                      child: SizedBox(
                          height: 70,
                          width: 200,
                          child: ElevatedButton(
                            child: Image(
                              image: AssetImage('assets/bni.png'),
                            ),
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => PesananPage())));
                            }),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.black,
                              elevation: 15,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(130.0, 80.0, 0.0, 100.0),
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
                                          builder: ((context) =>
                                              CheckoutPage())),
                                    );
                                  }
                                },
                                child: Center(
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
                      ))
                ],
              ),
            )));
  }
}
