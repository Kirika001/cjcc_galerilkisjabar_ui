import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:flutter/material.dart';

class PesananSiapDikirim extends StatefulWidget {
  const PesananSiapDikirim({Key? key}) : super(key: key);

  @override
  State<PesananSiapDikirim> createState() => _PesananSiapDikirimState();
}

class _PesananSiapDikirimState extends State<PesananSiapDikirim> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardOrderDikemas(noInvoice: "INV/2022/X/Kode lukisan",
            name: "Amr Fulan",
            location: "Nowhere",
            shipping: "Kirim aja"),
      ],
    );

  }
}
