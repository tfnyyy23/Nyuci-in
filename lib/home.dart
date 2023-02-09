import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

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
                    padding: EdgeInsets.fromLTRB(15.0, 30.0, 0.0, 1.0),
                    child: ElevatedButton(
                      onPressed: () {},
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
                    padding: EdgeInsets.fromLTRB(17.0, 30.0, 0.0, 1.0),
                    child: Text(
                      "Brotoseno",
                      style: const TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 113.0, 0.0, 90.0),
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
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(35.0, 60.0, 0.0, 90.0),
                            child: SizedBox(
                                height: 30,
                                child: Container(
                                  width: 40,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    gradient: (LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomCenter,
                                      stops: [0.3, 0.6, 0.9],
                                      colors: [
                                        Color.fromRGBO(42, 1, 128, 1),
                                        Color.fromRGBO(56, 37, 241, 1),
                                        Color.fromRGBO(158, 0, 255, 1),
                                      ],
                                    )),
                                  ),
                                  child: Text("tiptip"),
                                ))),
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
