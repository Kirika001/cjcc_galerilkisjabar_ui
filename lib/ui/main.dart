import 'package:cjcc_galerilukisjabar/ui/catalog.dart';
import 'package:cjcc_galerilukisjabar/ui/explore.dart';
import 'package:cjcc_galerilukisjabar/ui/home.dart';
import 'package:cjcc_galerilukisjabar/ui/profil.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List<Widget> _widgetOptions = [
    HomePage(),
    CatalogPage(),
    ExplorePage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: mainColor,
        unSelectedColor: blueColor,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          // if(index == 0 ) {
          //   Navigator.popAndPushNamed(context, _page[0]);
          // } else {
          // Navigator.pushNamed(context, _page[index]);
          // }
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Beranda',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'Katalog',
            icon: Icons.color_lens,
          ),
          CustomBottomBarItems(
              label: 'Telusuri',
              icon: Icons.explore
          ),
          CustomBottomBarItems(
            label: 'Profil',
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
