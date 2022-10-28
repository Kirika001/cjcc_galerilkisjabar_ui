import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:cjcc_galerilukisjabar/ui/collection.dart';
import 'package:cjcc_galerilukisjabar/ui/favorit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> with TickerProviderStateMixin {
  late TabController _tabProfil;

  @override
  void initState() {
    super.initState();
    _tabProfil = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(color: mainColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/order');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 150,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: const [
                              Text("   Pesanan Masuk"),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.plus),
                        color: whiteColor,
                        onPressed: () {
                          Navigator.pushNamed(context, "/posting");
                        },
                      ),
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.message),
                        color: whiteColor,
                        onPressed: () {
                          Navigator.pushNamed(context, "/chat");
                        },
                      ),
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.bars),
                        color: whiteColor,
                        onPressed: () {},
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
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
                                    children: const [
                                      Text("Kolektor"),
                                    ],
                                  ),
                                  color: lightGreyColor,
                                  height: 37,
                                  width: 80,
                                ),
                                CustomTransparanTag(
                                    widget: Row(
                                  children: const [
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
                  ),
                  // CustomTransparanButton(title: "Logout")
                ],
              ),
            ),
            Column(
              children: [
                TabBar(

                  tabs: const <Widget>[
                    Tab(
                      // icon: Icon(Icons.grid_on),
                      text: "Koleksi",
                    ),
                    Tab(
                      // icon: Icon(Icons.favorite_border),
                      text: "Favorit",
                    ),
                  ],
                  controller: _tabProfil,
                  // isScrollable: true,
                  labelColor: Colors.black54,
                  indicatorColor: redColor,
                ),
                SizedBox(
                  height: 369,
                  child: TabBarView(
                    controller: _tabProfil,
                    children: const <Widget>[
                      CollectionPage(),
                      FavoritPage()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
