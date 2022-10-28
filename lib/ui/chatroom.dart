import 'package:bubble/bubble.dart';
import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class ChatroomPage extends StatefulWidget {
  const ChatroomPage({Key? key}) : super(key: key);


  @override
  State<ChatroomPage> createState() => _ChatroomPageState();
}

class _ChatroomPageState extends State<ChatroomPage> {
  final messageInsert = TextEditingController();
  final List<Map> messages = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text("Fulan bin Fulan",
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
      body: Container(
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) =>
                        chat(
                            messages[index]["message"].toString(),
                            messages[index]["data"]
                        )
                )
            ),
            Divider(
              height: 5.0,
            ),
            Container(
              child: ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: whiteColor
                  ),
                  padding: EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: messageInsert,
                    decoration: InputDecoration(
                      hintText: "Ketikan Pesan...",
                      hintStyle: blackTextStyle,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    style: blackTextStyle,
                    onChanged: (value) {

                    },
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    setState(() {
                      messages.insert(0,
                          {"data": 1, "message": messageInsert.text});
                    });
                    messageInsert.clear();
                  },
                ),
              ),
            ),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }

  Widget chat(String message, int data) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: data == 1 ? MainAxisAlignment.end : MainAxisAlignment
            .start,
        children: [
          data == 0 ? Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profil1.png"),
            ),
          ) : Container(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Bubble(
              radius: Radius.circular(15),
              color: data == 0 ? redColor : mainColor,
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 10,),
                    Flexible(
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Text(
                            message,
                            style: whiteTextStyle,
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
          data == 1 ? Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ) : Container()
        ],
      ),
    );
  }
}
