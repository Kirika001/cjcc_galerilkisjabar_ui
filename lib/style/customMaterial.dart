import 'package:carousel_slider/carousel_slider.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Color color;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton(
      {Key? key,
      this.title = '',
      this.width = double.infinity,
      this.height = 50,
      this.icon,
      required this.color,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      ),
    );
  }
}

class CustomTransparanButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Color color;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTransparanButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      this.height = 50,
      this.icon,
      this.color = Colors.transparent,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          title,
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      ),
    );
  }
}

class CustomLinearButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Color? color1;
  final Color? color2;

  // final List? colors;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomLinearButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      this.height = 50,
      this.icon,
      // this.colors,
      this.color1,
      this.color2,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [const Color(0xffFD814A), const Color(0xffFC5C4C)],
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Color? color;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  final EdgeInsets? margin;

  const CustomTextButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 24,
    this.onPressed,
    this.icon,
    this.color,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(icon),
            Text(
              title,
              style: GoogleFonts.jaldi(color: color, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomInputButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? onTap;

  const CustomInputButton(
      {Key? key, required this.title, this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(shape: BoxShape.circle, color: greyColor),
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}

class CustomUpButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? onTap;

  const CustomUpButton({Key? key, required this.title, this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: DottedBorder(
          dashPattern: [8, 4],
          color: mainColor,
          strokeWidth: 2,
          child: Container(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.upload,
                  size: 50,
                  color: mainColor,
                ),
                Text(
                  "Upload Lukisan disini",
                  style: blueTextStyle.copyWith(fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String title;
  final String placeholder;
  final double width;
  final double height;
  final bool ispassword;

  const CustomTextField({
    Key? key,
    required this.title,
    required this.placeholder,
    this.width = double.infinity,
    this.height = 65,
    this.ispassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          TextFormField(
            obscureText: ispassword,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12),
                hintText: placeholder,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ],
      ),
    );
  }
}

class CustomTextBox extends StatelessWidget {
  final String placeholder;
  final double width;
  final double height;

  const CustomTextBox({
    Key? key,
    required this.placeholder,
    this.width = double.infinity,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
          decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        hintText: placeholder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: Icon(Icons.search, color: Colors.red),
      )),
    );
  }
}

class CustomTextArea extends StatelessWidget {
  final String title;
  final String placeholder;
  final double width;

  const CustomTextArea({
    Key? key,
    required this.title,
    required this.placeholder,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12),
                hintText: placeholder,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ],
      ),
    );
  }
}

class CustomDropdown extends StatelessWidget {
  final String title;
  final List<String> items;
  final String? selectedValue;
  final double width;
  final String hint;

  const CustomDropdown({
    Key? key,
    required this.title,
    required this.items,
    this.width = double.infinity,
    this.selectedValue,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          DropdownButtonFormField2(
            dropdownPadding: EdgeInsets.zero,
            decoration: InputDecoration(
                // contentPadding:  EdgeInsets.zero,
                border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
            isExpanded: true,
            hint: Text(hint),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    ))
                .toList(),
            validator: (value) {
              if (value == null) {
                return "Silahkan pilih item";
              }
            },
            onSaved: (value) {
              value.toString();
            },
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}

class AppbarIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final VoidCallback? onTap;

  const AppbarIcon(
      {Key? key,
      required this.icon,
      required this.color,
      required this.size,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: size,
        color: color,
      ),
      color: color,
      onPressed: onTap,
    );
  }
}

class CardCategory extends StatelessWidget {
  final String title;
  final String? img;

  const CardCategory({Key? key, required this.title, this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 3,
          child: Container(
            // margin: const EdgeInsets.all(10),
            height: 70,
            width: 105,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/img1.png',
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Text(title)
      ],
    );
  }
}

class CardProduct extends StatelessWidget {
  final String title;
  final String img;
  final String tag;
  final VoidCallback? ontap;

  const CardProduct(
      {Key? key,
      required this.title,
      required this.img,
      this.ontap,
      required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: ontap,
        child: Card(
          // padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          // height: 200,
          // width: MediaQuery.of(context).size.width * 0.45,
          // decoration: BoxDecoration(
          //   color: whiteColor,
          //   borderRadius: BorderRadius.circular(10),
          // ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 105,
                  width: double.infinity,
                  child: ClipRRect(
                    child: Image.asset(
                      img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                ProfilTag(name: "Fulan bin Fulan", role: "Artist")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardCatalogue extends StatelessWidget {
  final String title;
  final String? img;
  final String? status;

  const CardCatalogue({Key? key, required this.title, this.img, this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,
      color: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Image.asset("assets/img1.png"),
              Positioned(
                  right: 0,
                  child: CustomTag(
                    widget: Text("Pending"),
                    color: warningColor,
                  ))
            ]),
            Text(title),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTag(
                    widget: Icon(Icons.upload, color: whiteColor),
                    color: infoColor),
                CustomTag(
                    widget: Icon(Icons.hide_image_outlined), color: greyColor),
                CustomTag(
                    widget: Icon(Icons.delete, color: whiteColor),
                    color: redColor),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardOrder extends StatelessWidget {
  final String noInvoice;
  final String name;
  final String location;
  final String shipping;

  const CardOrder(
      {Key? key,
      required this.noInvoice,
      required this.name,
      required this.location,
      required this.shipping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pesanan Masuk",
              style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 17)),
          Text(
            "Nomor Invoice : $noInvoice",
            style: blackTextStyle.copyWith(height: 0.5),
          ),
          Text(
            "Nama Pemesan  : $name",
            style: blackTextStyle.copyWith(height: 1),
          ),
          Divider(thickness: 1),
          CustomListItem(
            title: "Silent",
            price: "Rp. 9,999,999,-",
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: redColor,
                      ),
                      Text(
                        " $location",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_shipping,
                        color: redColor,
                      ),
                      Text(
                        " $shipping",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardOrderBaru extends StatelessWidget {
  final String noInvoice;
  final String name;
  final String location;
  final String shipping;

  const CardOrderBaru(
      {Key? key,
      required this.noInvoice,
      required this.name,
      required this.location,
      required this.shipping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pesanan Masuk",
              style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 17)),
          Text(
            "Nomor Invoice : $noInvoice",
            style: blackTextStyle.copyWith(height: 0.5),
          ),
          Text(
            "Nama Pemesan  : $name",
            style: blackTextStyle.copyWith(height: 1),
          ),
          Divider(thickness: 1),
          CustomListItem(
            title: "Silent",
            price: "Rp. 9,999,999,-",
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: redColor,
                      ),
                      Text(
                        " $location",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_shipping,
                        color: redColor,
                      ),
                      Text(
                        " $shipping",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: CustomTag(
                  widget: Text("Terima Pesanan", style: whiteTextStyle),
                  color: successColor,
                ),
              ),
              CustomTransparanTag(
                  widget: Text("Tanggapi Pesanan", style: blackTextStyle)),
            ],
          )
        ],
      ),
    );
  }
}

class CardOrderDikemas extends StatelessWidget {
  final String noInvoice;
  final String name;
  final String location;
  final String shipping;

  const CardOrderDikemas(
      {Key? key,
      required this.noInvoice,
      required this.name,
      required this.location,
      required this.shipping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pesanan Masuk",
              style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 17)),
          Text(
            "Nomor Invoice : $noInvoice",
            style: blackTextStyle.copyWith(height: 0.5),
          ),
          Text(
            "Nama Pemesan  : $name",
            style: blackTextStyle.copyWith(height: 1),
          ),
          Divider(thickness: 1),
          CustomListItem(
            title: "Silent",
            price: "Rp. 9,999,999,-",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: redColor,
                      ),
                      Text(
                        " $location",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_shipping,
                        color: redColor,
                      ),
                      Text(
                        " $shipping",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: CustomTag(
                  widget: Text("Kirim Lukisan", style: whiteTextStyle),
                  color: successColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardOrderDikirim extends StatelessWidget {
  final String noInvoice;
  final String name;
  final String location;
  final String shipping;

  const CardOrderDikirim(
      {Key? key,
      required this.noInvoice,
      required this.name,
      required this.location,
      required this.shipping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pesanan Masuk",
              style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 17)),
          Text(
            "Nomor Invoice : $noInvoice",
            style: blackTextStyle.copyWith(height: 0.5),
          ),
          Text(
            "Nama Pemesan  : $name",
            style: blackTextStyle.copyWith(height: 1),
          ),
          Divider(thickness: 1),
          CustomListItem(
            title: "Silent",
            price: "Rp. 9,999,999,-",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: redColor,
                      ),
                      Text(
                        " $location",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_shipping,
                        color: redColor,
                      ),
                      Text(
                        " $shipping",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: CustomTag(
                  widget: Text("Lacak Pengiriman", style: whiteTextStyle),
                  color: successColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardCart extends StatelessWidget {
  const CardCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ProfilTag(name: "Fulan bin Fulan", role: "artist"),
          Divider(thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomListItem(title: "silent", price: "Rp. 9,999,999,-"),
              CustomTransparanTag(widget: Text("hapus"))
            ],
          )
        ],
      ),
    );
  }
}

class CardOrderSelesai extends StatelessWidget {
  final String noInvoice;
  final String name;
  final String location;
  final String shipping;

  const CardOrderSelesai(
      {Key? key,
      required this.noInvoice,
      required this.name,
      required this.location,
      required this.shipping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pesanan Selesai",
              style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 17)),
          Text(
            "Nomor Invoice : $noInvoice",
            style: blackTextStyle.copyWith(height: 0.5),
          ),
          Text(
            "Nama Pemesan  : $name",
            style: blackTextStyle.copyWith(height: 1),
          ),
          Divider(thickness: 1),
          CustomListItem(
            title: "Silent",
            price: "Rp. 9,999,999,-",
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: redColor,
                      ),
                      Text(
                        " $location",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_shipping,
                        color: redColor,
                      ),
                      Text(
                        " $shipping",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  final String title;
  final String price;

  const CustomListItem({Key? key, required this.title, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/img1.png",
          height: 50,
          width: 100,
        ),
        Column(
          children: [Text("  $title\n  $price")],
        )
      ],
    );
  }
}

class CustomTag extends StatelessWidget {
  final Widget widget;
  final Color color;
  final VoidCallback? onTap;
  final double? height;
  final double? width;

  const CustomTag(
      {Key? key,
      required this.widget,
      required this.color,
      this.onTap,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      padding: const EdgeInsets.all(5),
      height: height,
      width: width,
      margin: const EdgeInsets.all(4),
      child: widget,
    );
  }
}

class CustomTransparanTag extends StatelessWidget {
  final Widget widget;
  final Color color;
  final VoidCallback? onTap;
  final double? height;
  final double? width;

  const CustomTransparanTag(
      {Key? key,
      required this.widget,
      this.color = Colors.transparent,
      this.onTap,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(),
      ),
      padding: const EdgeInsets.all(5),
      height: height,
      width: width,
      margin: const EdgeInsets.all(4),
      child: widget,
    );
  }
}

class CustomFolatingButton extends StatelessWidget {
  final IconData icon;
  final double? size;

  const CustomFolatingButton({Key? key, required this.icon, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: [const Color(0xffFFAC5F), const Color(0xffFC5C4C)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Icon(
          icon,
          size: size,
        ));
  }
}

class ProfilTag extends StatelessWidget {
  final String name;
  final String role;

  const ProfilTag({
    Key? key,
    required this.name,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
              // radius: 25,
              backgroundImage: AssetImage('assets/profil1.png')),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      // fontSize: 20,
                    )),
                Text(role,
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      // fontSize: 16,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BigCollection extends StatelessWidget {
  const BigCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 227,
      // margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 5, right: 1),
                height: 145,
                width: MediaQuery.of(context).size.width * 0.4,
                child: ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10)),
                    child: Image.asset(
                      'assets/img1.png',
                      fit: BoxFit.cover,
                    )),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: 72,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ClipRRect(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10)),
                        child: Image.asset(
                          'assets/img1.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 1, bottom: 5),
                    height: 72,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ClipRRect(
                        child: Image.asset(
                      'assets/img1.png',
                      fit: BoxFit.cover,
                    )),
                  ),
                ],
              )
            ],
          ),
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: ProfilTag(name: "Fulan bin Fulan", role: "artist")),
        ],
      ),
    );
  }
}

class Slideshow extends StatefulWidget {
  const Slideshow({Key? key}) : super(key: key);

  @override
  State<Slideshow> createState() => _SlideshowState();
}

class _SlideshowState extends State<Slideshow> {
  List<Widget> image = [
    Image.asset('assets/slide1.png'),
    Image.asset('assets/slide2.png'),
    Image.asset('assets/slide3.png'),
  ];

  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: image,
      options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          enableInfiniteScroll: false,
          // height: 200,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          }),
      carouselController: carouselController,
    );
  }
}
