import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String accountName = "Amr Fulan";
  String accounContact = "08x-xxxx-xxxx";
  String accountAddress = "Jl. entah dimana no.001 kota disini provinsi disana no.kodepos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text("Checkout",
            style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold)),
        leading: AppbarIcon(
            icon: Icons.keyboard_arrow_left,
            color: whiteColor,
            size: 40,
            onTap: () => Navigator.pop(context)),
        actions: [
          AppbarIcon(icon: Icons.chat, color: whiteColor, size: 30),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Card(
                  elevation: 1,
                  color: bgColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: redColor,
                          ),
                          Text(" Alamat Pengiriman"),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 25),
                          // width: 250,
                          child: Text(
                              "$accountName | $accounContact\n$accountAddress")),
                      CustomTextButton(
                        title: "+ Pilih Alamat Lain",
                        color: redColor,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      ProfilTag(name: "Fulan bin Fulan", role: "Artsit"),
                      Divider(thickness: 2,),
                      CustomListItem(title: "silent", price: "Rp. 9,999,999,-")
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: "Catatan",
                        border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pengiriman dan Pembayaran", style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),),
                      Divider(thickness: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Column(
                            children: [
                              Text("Pengiriman Reguler", style: blackTextStyle,),
                              Text("Kirim aja (Rp. 50,000,-", style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),)
                            ],
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                      Divider(thickness: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Image.asset("assets/bank1.png"),
                          Text(" BCA Virtual account,",style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                          Icon(Icons.chevron_right)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal untuk Item"),
                          Text("Rp ...................."),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal untuk Pengiriman"),
                          Text("Rp ...................."),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("BiayaTransfer"),
                          Text("Rp ...................."),
                        ],
                      ),
                    ],
                  ),
                )


      ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total"),
                  Text(
                    "Rp. 0,000,000,-",
                    style: blackTextStyle.copyWith(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  CustomLinearButton(title: "Lanjutkan Pembelian")
                ],
              ))
        ],
      ),
    );
  }
}
