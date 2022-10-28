import 'package:cjcc_galerilukisjabar/ui/history_dibatalkan.dart';
import 'package:cjcc_galerilukisjabar/ui/history_dikemas.dart';
import 'package:cjcc_galerilukisjabar/ui/history_dikirim.dart';
import 'package:cjcc_galerilukisjabar/ui/history_pending.dart';
import 'package:cjcc_galerilukisjabar/ui/history_selesai.dart';
import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> with TickerProviderStateMixin {
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
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text("Riwayat Pembelian",
            style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold)),
        leading: AppbarIcon(
            icon: Icons.keyboard_arrow_left,
            color: whiteColor,
            size: 40,
            onTap: () => Navigator.pop(context)),
        actions: [
          AppbarIcon(icon: Icons.chat, color: whiteColor, size: 30),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            tabs: const <Widget>[
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Dikemas",
              ),
              Tab(
                text: "Dikirim",
              ),
              Tab(
                text: "Selesai",
              ),
              Tab(
                text: "Dibatalkan",
              ),
            ],
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.black54,
            indicatorColor: redColor,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                HistoryPendingPage(),
                HistoryDikemasPage(),
                HistoryDikirimPage(),
                HistorySelesaiPage(),
                HistoryDibatalkanPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
