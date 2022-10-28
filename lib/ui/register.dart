import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 160,
                color: blueColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 10),
                child: Center(child: CustomInputButton(title: 'upload foto', icon: CupertinoIcons.camera ,)),
              )
            ],
          ),
          Center(child: Text("Register", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 25))),
          CustomTextField(title: 'Nama', placeholder: 'Nama'),
          CustomTextField(title: 'Email', placeholder: 'fulan@mail.com'),
          CustomTextField(title: 'Password', placeholder: 'password', ispassword: true,),
          CustomDropdown(title: 'Daftar Sebagai', items: ['Pelukis','Kolektor'], hint: "Daftar sebagai",),
          CustomFilledButton(title: 'Register', color: mainColor)
        ],
      ),

    );
  }
}
