import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        // title: Text("",
        //     style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
        // leading: AppbarIcon(icon: Icons.keyboard_arrow_left, color: redColor, size: 40, onTap: ()=> Navigator.pop(context)),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/chat');
              },
              child: AppbarIcon(icon: Icons.chat, color: redColor, size: 30)),
        ],
      ),
    );
  }
}
