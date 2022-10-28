import 'package:cjcc_galerilukisjabar/ui/catalog.dart';
import 'package:cjcc_galerilukisjabar/ui/chat.dart';
import 'package:cjcc_galerilukisjabar/ui/chatroom.dart';
import 'package:cjcc_galerilukisjabar/ui/checkout.dart';
import 'package:cjcc_galerilukisjabar/ui/explore.dart';
import 'package:cjcc_galerilukisjabar/ui/home.dart';
import 'package:cjcc_galerilukisjabar/ui/keranjang.dart';
import 'package:cjcc_galerilukisjabar/ui/login.dart';
import 'package:cjcc_galerilukisjabar/ui/main.dart';
import 'package:cjcc_galerilukisjabar/ui/nonlogin.dart';
import 'package:cjcc_galerilukisjabar/ui/pesanan.dart';
import 'package:cjcc_galerilukisjabar/ui/posting.dart';
import 'package:cjcc_galerilukisjabar/ui/profil.dart';
import 'package:cjcc_galerilukisjabar/ui/register.dart';
import 'package:cjcc_galerilukisjabar/ui/history.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:cjcc_galerilukisjabar/ui/splashscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Lukis Jabar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0
        ),
        scaffoldBackgroundColor: bgColor,
      ),
      // home: CartPage(),
      routes:{
        '/' : (context) => const SplashScreen(),
        '/login' : (context) => const LoginPage(),
        '/register' : (context) => const RegisterPage(),
        '/home' : (context) => const MainPage(),
        '/cart' : (context) => const CartPage(),
        '/order' : (context) => const OrderPage(),
        '/posting' : (context) => const PostingPage(),
        '/catalog' : (context) => const CatalogPage(),
        '/explore' : (context) => const ExplorePage(),
        '/checkout' :(context) => const CheckoutPage(),
        '/histort' : (context) => const HistoryPage(),
        '/profil' : (context) => const ProfilPage(),
        '/chat' : (context) => const ChatPage(),
        '/chatroom' : (context) => const ChatroomPage(),
        '/nonlogin' : (context) => const NonLoginPage(),
      },

    );
  }
}

