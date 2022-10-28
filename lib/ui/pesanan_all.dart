import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:flutter/material.dart';

class SemuaPesanan extends StatefulWidget {
  const SemuaPesanan({Key? key}) : super(key: key);

  @override
  State<SemuaPesanan> createState() => _SemuaPesananState();
}

class _SemuaPesananState extends State<SemuaPesanan> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardOrder(noInvoice: "INV/2022/X/Kode lukisan",
            name: "Amr Fulan",
            location: "Nowhere",
            shipping: "Kirim aja"),
      ],
    );

  }
}
