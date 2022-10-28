import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // mainAxisExtent: 150
        // crossAxisSpacing: 200
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(1),
          height: 200, width: 100,
          // child: Text("text"),
          decoration: BoxDecoration(
            color: greyColor
          ),
        );
      },
    );
  }
}
