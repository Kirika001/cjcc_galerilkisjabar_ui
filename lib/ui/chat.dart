import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text("Chat",
            style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold)),
        leading: AppbarIcon(
            icon: Icons.keyboard_arrow_left,
            color: whiteColor,
            size: 40,
            onTap: () => Navigator.pop(context)),
        // actions: [
        //   AppbarIcon(icon: Icons.person, color: whiteColor, size: 30),
        // ],
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/chatroom');
            },
            leading: CircleAvatar(backgroundImage: AssetImage("assets/profil1.png"),),
            title: Text("Fulan bin Fulan"),
            subtitle: Text("Fulan bin Fulan Opus igitur est dicere possit dura ", overflow: TextOverflow.ellipsis),
            trailing: Text("Today, 13.00"),
          )
        ],
      ),
    );
  }
}
