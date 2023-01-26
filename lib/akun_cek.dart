import 'package:flutter/material.dart';

class CekAkun extends StatelessWidget {
  final bool login;
  final Function? press;
  const CekAkun({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Belum memiliki akun ? " : "Sudah memiliki akun ? ",
          style: const TextStyle(
              color: Color.fromRGBO(143, 0, 255, 50), fontSize: 15),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "Buat Disini" : "Masuk Disini",
            style: const TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(143, 0, 255, 50),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
