import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:flutter/material.dart';

class PesananSelesai extends StatefulWidget {
  const PesananSelesai({Key? key}) : super(key: key);

  @override
  State<PesananSelesai> createState() => _PesananSelesaiState();
}

class _PesananSelesaiState extends State<PesananSelesai> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardOrderSelesai(noInvoice: "INV/2022/X/Kode lukisan",
            name: "Amr Fulan",
            location: "Nowhere",
            shipping: "Kirim aja"),
      ],
    );

  }
}
