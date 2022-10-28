import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:flutter/material.dart';

class PesananBaru extends StatefulWidget {
  const PesananBaru({Key? key}) : super(key: key);

  @override
  State<PesananBaru> createState() => _PesananBaruState();
}

class _PesananBaruState extends State<PesananBaru> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardOrderBaru(noInvoice: "INV/2022/X/Kode lukisan",
            name: "Amr Fulan",
            location: "Nowhere",
            shipping: "Kirim aja"),
      ],
    );

  }
}
