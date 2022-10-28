import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class HistoryPendingPage extends StatelessWidget {
  const HistoryPendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: const EdgeInsets.all(10),
          color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ProfilTag(name: "fulan bin fulan", role: "artist"),
                Divider(),
                CustomListItem(title: "Silent", price: "Rp. 9,999,999,-"),
              ],
            ),
          ),
        )
      ]
    );
  }
}
