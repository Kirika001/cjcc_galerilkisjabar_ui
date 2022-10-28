import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:flutter/material.dart';

class PesananDalamPengiriman extends StatefulWidget {
  const PesananDalamPengiriman({Key? key}) : super(key: key);

  @override
  State<PesananDalamPengiriman> createState() => _PesananDalamPengirimanState();
}

class _PesananDalamPengirimanState extends State<PesananDalamPengiriman> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardOrderDikirim(noInvoice: "INV/2022/X/Kode lukisan",
            name: "Amr Fulan",
            location: "Nowhere",
            shipping: "Kirim aja"),
      ],
    );

  }
}
