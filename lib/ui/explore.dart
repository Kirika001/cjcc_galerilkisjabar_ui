import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Telusuri Karya Seni", style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
        // leading: AppbarIcon(icon: Icons.keyboard_arrow_left, color: redColor, size: 40, onTap: ()=> Navigator.pop(context)),
        actions: [
          GestureDetector(
              onTap:(){
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
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 220
                  ),
                  itemBuilder: (BuildContext context, int index) {
                  return CardProduct(title: "silent $index", img: "assets/img$index.png",);
                },
            ),
          ),
        ],
      ),
      // bottomNavigationBar: CustomBottomNavbar(),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/cart');
      },
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: CustomFolatingButton(icon: FontAwesomeIcons.basketShopping,),
    ));
  }
}
