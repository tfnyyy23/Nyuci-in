import 'package:flutter/material.dart';
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
            Image(image: AssetImage('assets/landing-logo2.jpg')),
            SizedBox(height: 30),
            Text('SELAMAT DATANG',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Gak perlu pusing-pusing lagi, buat pikirin pakaian yang belum dicuci. NYUCI-IN akan membuat pakaian anda siap pakai.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
                height: 70,
                width: 200,
                child: ElevatedButton(
                  child: Text(
                    "Lanjutkan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(42, 1, 128, 1),
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
                    onPrimary: Colors.grey,
                    elevation: 20,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(30)),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}

/*import 'package:flutter/material.dart';
import 'package:nyuciin/components/responsive.dart';
import 'package:nyuciin/components/login_signup_btn.dart';
import 'package:nyuciin/components/welcome_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            desktop: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(
                  child: WelcomeImage(),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 450,
                        child: LoginAndSignupBtn(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            mobile: const MobileWelcomeScreen(),
          ),
        ),
      ),
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const WelcomeImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginAndSignupBtn(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
*/