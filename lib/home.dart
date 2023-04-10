import 'package:flutter/material.dart';
import 'package:nyuciin/login.dart';
import 'package:nyuciin/pesanan.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  void _showProfile(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 500,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 500,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(143, 0, 255, 50),
                      ),
                      child: Row(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 1.0),
                          child: ElevatedButton(
                            onPressed: () {
                              _showProfile(context);
                            },
                            child: Image(
                              image: AssetImage('assets/profile3.png'),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(7),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(17.0, 50.0, 0.0, 1.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Brotoseno",
                                  style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontFamily: 'Anton',
                                  ),
                                ),
                                Text(
                                  "New Member",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'Anton',
                                  ),
                                ),
                                Text(
                                  "ID 0912355007892",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ],
                            )),
                      ]),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 170.0, 0.0, 0.0),
                      child: Container(
                          height: 300,
                          width: 600,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(35),
                              ),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                  child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                                child: SizedBox(
                                    height: 60,
                                    width: 140,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color.fromARGB(246, 170, 63, 252),
                                              Color.fromRGBO(143, 0, 255, 50),
                                            ]),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                  color: Color.fromRGBO(0, 0, 0,
                                                      0.57), //shadow for button
                                                  blurRadius:
                                                      5) //blur radius of shadow
                                            ]),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              onSurface: Colors.transparent,
                                            ),
                                            onPressed: (() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          LoginPage())));
                                            }),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: 18,
                                                bottom: 18,
                                              ),
                                              child: Text(
                                                "Keluar",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )))),
                              ))
                            ],
                          ))),
                  // Padding(
                  //   padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  //   child: Container(
                  //       height: 200,
                  //       width: 500,
                  //       decoration: const BoxDecoration(
                  //         borderRadius: BorderRadius.vertical(
                  //           top: Radius.circular(35),
                  //         ),
                  //         color: Color.fromRGBO(158, 0, 255, 100),
                  //       )),
                  // ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/background-dashboard.png'),
                ),
                Row(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 1.0),
                    child: ElevatedButton(
                      onPressed: () {
                        _showProfile(context);
                      },
                      child: Image(
                        image: AssetImage('assets/profile.png'),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        side: const BorderSide(
                          width: 1.0,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(4),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(17.0, 20.0, 0.0, 1.0),
                    child: Text(
                      "Brotoseno",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: 'Anton',
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                  child: Container(
                    height: 900,
                    width: 900,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(35),
                      ),
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 40.0, 5.0, 0.0),
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  alignment: Alignment.topCenter,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 150,
                                        margin: EdgeInsets.only(right: 20),
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: (LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.7, 0.9],
                                            colors: [
                                              Color.fromRGBO(66, 85, 255, 1),
                                              Color.fromRGBO(102, 0, 231, 1),
                                            ],
                                          )),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.57), //shadow for button
                                                blurRadius: 5)
                                          ], //blur radius of shadow
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.0, 20.0, 0.0, 0.0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "assets/laundry.png",
                                                  ),
                                                  iconSize: 90,
                                                  onPressed: (() {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                PesananPage())));
                                                  }),
                                                )
                                                // Image(
                                                //   image: AssetImage(
                                                //       'assets/laundry.png'),
                                                //   height: 100,
                                                // ),
                                                ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                "Laundry",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        margin: EdgeInsets.only(right: 20),
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: (LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.7, 0.9],
                                            colors: [
                                              Color.fromRGBO(66, 85, 255, 1),
                                              Color.fromRGBO(102, 0, 231, 1),
                                            ],
                                          )),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.57), //shadow for button
                                                blurRadius: 5)
                                          ], //blur radius of shadow
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.0, 0.0, 0.0, 0.0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "assets/setrika2.png",
                                                  ),
                                                  iconSize: 120,
                                                  onPressed: (() {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                PesananPage())));
                                                  }),
                                                )
                                                // Image(
                                                //   image: AssetImage(
                                                //       'assets/laundry.png'),
                                                //   height: 100,
                                                // ),
                                                ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0.0, 0, 45.0, 0.0),
                                              child: Text(
                                                "Setrika",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        margin: EdgeInsets.only(right: 20),
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: (LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.7, 0.9],
                                            colors: [
                                              Color.fromRGBO(66, 85, 255, 1),
                                              Color.fromRGBO(102, 0, 231, 1),
                                            ],
                                          )),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.57), //shadow for button
                                                blurRadius: 5)
                                          ], //blur radius of shadow
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.0, 20.0, 0.0, 0.0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "assets/baju.png",
                                                  ),
                                                  iconSize: 90,
                                                  onPressed: (() {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                PesananPage())));
                                                  }),
                                                )
                                                // Image(
                                                //   image: AssetImage(
                                                //       'assets/laundry.png'),
                                                //   height: 100,
                                                // ),
                                                ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                "Cuci",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        margin: EdgeInsets.only(right: 20),
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: (LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.7, 0.9],
                                            colors: [
                                              Color.fromRGBO(66, 85, 255, 1),
                                              Color.fromRGBO(102, 0, 231, 1),
                                            ],
                                          )),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.57), //shadow for button
                                                blurRadius: 5)
                                          ], //blur radius of shadow
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.0, 20.0, 0.0, 0.0),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                    "assets/kaos.png",
                                                  ),
                                                  iconSize: 90,
                                                  onPressed: (() {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                PesananPage())));
                                                  }),
                                                )
                                                // Image(
                                                //   image: AssetImage(
                                                //       'assets/laundry.png'),
                                                //   height: 100,
                                                // ),
                                                ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                "Cuci Kering",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
                          child: SizedBox(
                              height: 70,
                              width: 340,
                              child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          stops: [
                                            0.5,
                                            0.9
                                          ],
                                          colors: [
                                            Color.fromRGBO(102, 0, 231, 1),
                                            Color.fromRGBO(66, 85, 255, 1),
                                            //Color.fromRGBO(140, 40, 255, 100),
                                            //Color.fromRGBO(47, 0, 101, 100),
                                          ]),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: Color.fromRGBO(0, 0, 0,
                                                0.57), //shadow for button
                                            blurRadius:
                                                5) //blur radius of shadow
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
                                                    HomePage())),
                                          );
                                        }
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 40,
                                              top: 10,
                                              bottom: 10,
                                            ),
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/shopping-bag.png'),
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10,
                                              top: 18,
                                              bottom: 18,
                                            ),
                                            child: Text(
                                              "Cek Pesanan",
                                              style: TextStyle(
                                                fontSize: 23,
                                                fontFamily: 'Anton',
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      )))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 260,
                            top: 50,
                            bottom: 10,
                          ),
                          child: Text(
                            "Terbaru",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontFamily: 'Anton'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                            top: 10,
                          ),
                          child: Image(
                            image: AssetImage('assets/terbaru2.png'),
                            width: 300,
                            height: 300,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: Text(
                            "Kamu belum buat pesanan",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Regular',
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
