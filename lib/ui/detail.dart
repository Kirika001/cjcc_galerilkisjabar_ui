import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class DetailPage extends StatelessWidget {
  final String tag;
  final int index;
  final String title;

  const DetailPage(
      {Key? key, required this.tag, required this.index, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeDilation = 3.00;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: double.infinity,
              // width: MediaQuery.of(context).size.width,
              child: Hero(
                  tag: tag,
                  child: Image.asset(
                    "assets/img$index.png",
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: AppbarIcon(
                          icon: Icons.chevron_left,
                          color: whiteColor,
                          size: 40)),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/chat');
                      },
                      child: AppbarIcon(
                          icon: Icons.chat, color: whiteColor, size: 30))
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 100,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.brush_outlined,
                        color: redColor,
                      ),
                      Text("Oil Painting")
                    ],
                  ),
                )),
            Positioned(
              left: 50,
              right: 50,
              bottom: 70,
              child: Container(
                width: 200,
                child: CustomLinearButton(
                  title: "Lihat Detail",
                  onPressed: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        builder: (BuildContext bc) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter state) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                  MediaQuery
                                      .of(context)
                                      .viewInsets
                                      .bottom),
                              child: Stack(
                                // clipBehavior: Clip.none,
                                children: [
                                  // SizedBox(height: 10,),
                                  Container(
                                      margin:const EdgeInsets.only(top: 25),
                                      padding: const EdgeInsets.all(24),
                                      decoration: BoxDecoration(
                                          color: whiteColor,
                                          borderRadius:
                                          BorderRadius.vertical(top: Radius.circular(30))),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Text(
                                            "**Deskripsi Lukisan **Opus igitur est dicere possit dura omni specie, “Tu autem in specie, non videntur, nec omnino res est.” Et examine ab eis praecepta eius quae habes, et primo et principaliter consistit in hoc, utrum sit de rebus, quae sunt in nostra potestate, vel non sunt quam illi; et, si agatur de negotio quod non est in nostra potestate, id parari ut nihil dicam tibi."),
                                      )
                                  ),
                                  Positioned(
                                    left: 50,
                                    right: 50,
                                    // top: -30,
                                    child: Container(
                                      width: 200,
                                      child:
                                      CustomLinearButton(title: "Detail"),
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                        });
                  },
                ),
              ),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
