import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(color: mainColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/order');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      width: 150,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Row(
                        children: [
                          Text("   Pesanan Masuk"),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      FontAwesomeIcons.gear,
                      color: whiteColor,
                    ),
                    Icon(
                      FontAwesomeIcons.cartShopping,
                      color: whiteColor,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        FontAwesomeIcons.solidMessage,
                        color: whiteColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/profil1.png"),
                      radius: 45,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  Amr Fulan",
                          style: whiteTextStyle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            CustomTag(
                                widget: Row(
                                  children: [
                                    Text("Kolektor"),
                                    Icon(Icons.chevron_right)
                                  ],
                                ), color: lightGreyColor),
                            CustomTransparanTag(widget:Row(
                              children: [
                                Icon(Icons.edit),
                                Text("Edit Profil")
                              ],
                            ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
