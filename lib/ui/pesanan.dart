import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:cjcc_galerilukisjabar/ui/pesanan_all.dart';
import 'package:cjcc_galerilukisjabar/ui/pesanan_baru.dart';
import 'package:cjcc_galerilukisjabar/ui/pesanan_dikirim.dart';
import 'package:cjcc_galerilukisjabar/ui/pesanan_selesai.dart';
import 'package:cjcc_galerilukisjabar/ui/pesanan_dikemas.dart';
import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Pesanan Masuk",
            style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
        leading: AppbarIcon(
            icon: Icons.keyboard_arrow_left,
            color: redColor,
            size: 40,
            onTap: () => Navigator.pop(context)),
        actions: [
          AppbarIcon(icon: Icons.chat, color: redColor, size: 30),
        ],
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: mainColor,
                unselectedBackgroundColor: Colors.transparent,
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                borderWidth: 1,
                unselectedBorderColor: blackColor,
                tabs: [
                  Tab(
                    text: "Semua Pesanan",
                  ),
                  Tab(
                    text: "Pesanan Baru",
                  ),
                  Tab(
                    text: "Dalam Pengemasan",
                  ),
                  Tab(
                    text: "Dalam Pengiriman",
                  ),
                  Tab(
                    text: "Pesanan Selesai",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    SemuaPesanan(),
                    PesananBaru(),
                    PesananSiapDikirim(),
                    PesananDalamPengiriman(),
                    PesananSelesai(),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
