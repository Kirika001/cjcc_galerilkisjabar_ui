import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text("Keranjang", style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold)),
        leading: AppbarIcon(icon: Icons.keyboard_arrow_left, color: whiteColor, size: 40, onTap: ()=> Navigator.pop(context)),
        actions: [
          AppbarIcon(icon: Icons.chat, color: whiteColor, size: 30),
        ],
      ),
      extendBody: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
                children: [
                  CardCart(),
                  CardCart(),
                ],
              ),
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total"),
                  Text("Rp. 0,000,000,-", style: blackTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.bold),),
                  CustomLinearButton(title: "Checkout", onPressed: (){
                    Navigator.pushNamed(context, '/checkout');
                  },)
                ],
              )
          )
        ],
      ),

    );
  }
}
