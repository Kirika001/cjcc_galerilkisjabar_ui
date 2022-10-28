import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  List<String> _artname = const [
    "silent",
    "silent2",
    "silent3",
    "silent4",
    "silent5",
    "silent6",
    "silent7",
    "silent8",
    "silent9",
    "silent10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("Katalog Saya",
              style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
          // leading: AppbarIcon(icon: Icons.keyboard_arrow_left, color: redColor, size: 40, onTap: ()=> Navigator.pop(context)),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/chat');
                },
                child: AppbarIcon(icon: Icons.chat, color: redColor, size: 30)),
          ],
        ),
        body: Column(
          children: [
            CustomTextBox(placeholder: "Cari..."),
            Expanded(
              child: GridView.builder(
                itemCount: _artname.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // mainAxisExtent: 150
                  // crossAxisSpacing: 200
                ),
                itemBuilder: (BuildContext context, int index) {
                  return CardCatalogue(title: _artname[index]);
                },
              ),
            ),
          ],
        ),
        // bottomNavigationBar: CustomBottomNavbar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/posting');
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: CustomFolatingButton(icon: FontAwesomeIcons.plus),
        ));
  }
}
