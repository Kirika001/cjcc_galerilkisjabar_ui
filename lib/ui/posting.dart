import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostingPage extends StatelessWidget {
  const PostingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Posting Lukisan", style: blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
        leading: AppbarIcon(icon: Icons.keyboard_arrow_left, color: redColor, size: 40, onTap: ()=> Navigator.pop(context)),
        actions: [
          AppbarIcon(icon: Icons.chat, color: redColor, size: 30)
        ],
      ),
      body: ListView(
        // padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(height: 10,),
          CustomUpButton(title: 'upload foto', icon: CupertinoIcons.camera ,),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Text("Detail Lukisan", style: blackTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          CustomTextField(title: "Judul Lukisan", placeholder: "Judul Lukisan"),
          CustomTextField(title: "Tahun Pembuatan", placeholder: "20xx"),
          CustomTextField(title: "Harga yang ditawarkan" , placeholder: "Rp. xx,xxx,xxx,-"),
          CustomDropdown(title: "Gaya Lukisan", items: ["Realism","Modern art", "Oil Painting"], hint: "Pilih Gaya Lukis"),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            height: 80,
            child: DottedBorder(
              color: mainColor,
              dashPattern: [8,4],
              child: ListView(),),
          ),
          CustomTextField(title: "Media Lukis", placeholder: "Media Lukis"),
          CustomTextField(title: "Dimensi Lukisan", placeholder: "contoh : 50 x 70 cm"),
          CustomTextArea(title: "Deskripsi Lukisan", placeholder: "Deskripsi/Filosopi Lukisan"),
          SizedBox(height: 10,),
          CustomLinearButton(title: "Upload"),
          SizedBox(height: 10,),
        ],
      ),

    );
  }
}
