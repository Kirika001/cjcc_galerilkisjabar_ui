import 'package:carousel_slider/carousel_slider.dart';
import 'package:cjcc_galerilukisjabar/ui/login.dart';
import 'package:cjcc_galerilukisjabar/style/customMaterial.dart';
import 'package:cjcc_galerilukisjabar/style/theme.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<String> description = [
    "Untuk memberikan lebih banyak kesempatan bagi seniman untuk berkembang di tengah waktu yang tidak biasa dengan membuat toko dan pameran seni online.",
    "Menjadi media untuk para seniman memasarkan karya seni nya juga media untuk para kolektor seni membeli karya seni membeli karya seniman lokal",
    "Menjadi platform yang menawarkan berbagai macam karya seni dari seniman lokal khususnya para seniman Jawa Barat.\n"
  ];

  List<Widget> image = [
    Image.asset('assets/intro1.png'),
    Image.asset('assets/intro2.png'),
    Image.asset('assets/intro3.png'),
  ];

  int currentIndex = 0;
  CarouselController carouselController = CarouselController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                  items: image,
                  options: CarouselOptions(
                    viewportFraction: 1,
                      enableInfiniteScroll: false,
                      height: 270,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      }),
                  carouselController: carouselController,
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0 ?  redColor : greyColor),
                  ),
                  Container(
                    width: 12,
                    height: 12,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 1 ? redColor : greyColor),
                  ),
                  Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 2 ? redColor : greyColor,
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          description[currentIndex],textAlign: TextAlign.justify,
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: regular),
                        ),
                      ),
                      CustomFilledButton(
                        width: double.infinity,
                        height: 50,
                        title: currentIndex != 2 ? 'Lanjut' : 'Login',
                        color: redColor,
                        onPressed: () {
                          currentIndex != 2
                              ? carouselController.nextPage()
                              : Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                      ),
                      CustomTransparanButton(
                        width: double.infinity,
                        height: 50,
                        title: 'Langsung masuk (Fitur terbatas)',
                        color: Colors.transparent,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/nonlogin', (route) => false);
                        },
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),


    );
  }
}
