import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:cjcc_galerilukisjabar/ui/explore.dart';
import 'package:cjcc_galerilukisjabar/ui/guest.dart';
import 'package:cjcc_galerilukisjabar/ui/home.dart';
import 'package:cjcc_galerilukisjabar/ui/login.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';

class NonLoginPage extends StatefulWidget {
  const NonLoginPage({Key? key}) : super(key: key);

  @override
  State<NonLoginPage> createState() => _NonLoginPageState();
}

class _NonLoginPageState extends State<NonLoginPage> with TickerProviderStateMixin {
  int _currentIndex = 0;

  final List<Widget> _widgetOptions = [
    HomePage(),
    ExplorePage(),
    GuestPage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          },
          enableLineIndicator: true,
          lineIndicatorWidth: 3,
          indicatorType: IndicatorType.Top,
          customBottomBarItems: [
            CustomBottomBarItems(
              label: 'Beranda',
              icon: Icons.home,
            ),
            CustomBottomBarItems(label: 'Telusuri', icon: Icons.explore),
            CustomBottomBarItems(
              label: 'Profil',
              icon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }

  Widget profil() {
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
