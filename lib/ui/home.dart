import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: 50,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/chat');
                    },
                    child:
                        AppbarIcon(icon: Icons.chat, color: redColor, size: 30))
              ],
            ),
          ),
          Expanded(
            child: ListView(
              // padding: const EdgeInsets.all(15),
              children: [
                Slideshow(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        CardCategory(title: 'oil painting'),
                        CardCategory(title: 'oil painting'),
                        CardCategory(title: 'oil painting'),
                        CardCategory(title: 'oil painting'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_right_outlined),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                BigCollection(),
                BigCollection(),
                BigCollection(),
                BigCollection(),
                BigCollection(),
                CustomTransparanButton(title: 'Telusuri Lebih Lanjut'),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
