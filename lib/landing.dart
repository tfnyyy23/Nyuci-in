import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Image(
              image: AssetImage('assets/landing-logo2.jpg'),
              height: 300,
            ),
            SizedBox(height: 30),
            Text('SELAMAT DATANG',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Anton',
                )),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Gak perlu pusing-pusing lagi, buat pikirin pakaian yang belum dicuci. NYUCI-IN akan membuat pakaian anda siap pakai.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
                height: 70,
                width: 180,
                child: ElevatedButton(
                  child: Text(
                    "Lanjutkan",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(127, 16, 255, 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => LoginPage())),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    elevation: 15,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
