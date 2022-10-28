import 'package:cjcc_galerilukisjabar/ui/register.dart';
import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 247,
                color: blueColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Center(child: Image.asset('assets/login.png',)),
              )
            ],
          ),
          Center(child: Text("Login", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 25))),
          CustomTextField(title: 'Email', placeholder: 'fulan@mail.com'),
          CustomTextField(title: 'Password', placeholder: 'password', ispassword: true,),
          CustomTextButton(title: 'Lupa Password ?', color: mainColor, margin: const EdgeInsets.symmetric(horizontal: 30),),
          CustomFilledButton(title: 'Login', color: mainColor),
          CustomTransparanButton(title: 'Belum terdaftar? Register disini', onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
          },),

        ],
      ),

    );
  }
}
