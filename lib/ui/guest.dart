import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/ui/login.dart';
import 'package:flutter/material.dart';

class GuestPage extends StatelessWidget {
  const GuestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/logo.png"),
          SizedBox(
            height: 10,
          ),
          CustomLinearButton(
            title: "Login Untuk mengakses fitur lengkap",
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ]);
  }
}
