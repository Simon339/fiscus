import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CardsView extends StatefulWidget {
  const CardsView({super.key});

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  List subArr = [
    {"name": "Spotify",
     "icon": "assets/spotify_logo.png", 
     "price": "5.99"
    },
    {
      "name": "YouTube Premium",
      "icon": "assets/youtube_logo.png",
      "price": "18.99"
    },
    {
      "name": "Microsoft OneDrive",
      "icon": "assets/onedrive_logo.png",
      "price": "29.99"
    },
    {"name": "NetFlix", "icon": "assets/netflix_logo.png", "price": "15.00"}
  ];

  List carArr = [
    {
      "name": "Fiscus Personal Budget",
      "number": "**** **** **** 2197",
      "month_year": "08/27"
    },
    {
      "name": "Fiscus Personal Budget",
      "number": "**** **** **** 2198",
      "month_year": "09/27"
    },
    {
      "name": "Fiscus Personal Budget",
      "number": "**** **** **** 2297",
      "month_year": "07/27"
    },
    {
      "name": "Fiscus Personal Budget",
      "number": "**** **** **** 2397",
      "month_year": "05/27"
    },
  ];

  SwiperController controller = SwiperController();

  Widget buildSwiper() {
    return Swiper(
      itemCount: carArr.length,
      customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
        ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
        ..addTranslate([
          const Offset(-370.0, -40.0),
          Offset.zero,
          const Offset(370.0, -40.0),
        ]),
      fade: 1.0,
      onIndexChanged: (index) {
        print(index);
      },
      scale: 0.8,
      itemWidth: 252.0,
      itemHeight: 440,
      controller: controller,
      layout: SwiperLayout.STACK,
      viewportFraction: 0.8,
      itemBuilder: ((context, index) {
        var cObj = carArr[index] as Map? ?? {};
        return Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 41, 41, 51),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 4)
              ]),
          child: Stack(fit: StackFit.expand, children: [
            Image.asset(
              "assets/card_blank.png",
              width: 252.0,
              height: 440,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 9,
                ),
                Image.asset("assets/mastercard_logo.png", width: 70),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Virtual Card",
                  style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 115,
                ),
                Text(
                  cObj["name"] ?? "Fiscus Personal Budget",
                  style: GoogleFonts.notoSans(
                      color: const Color(0xffC1C1CD),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  cObj["number"] ?? "**** **** **** 2197",
                  style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  cObj["month_year"] ?? "08/27",
                  style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ]),
        );
      }),
      autoplayDisableOnInteraction: false,
      axisDirection: AxisDirection.right,
    );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      //backgroundColor: Color(0xff0E0E12),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const SizedBox(height: 8,),
            SizedBox(
              width: double.infinity,
              height: 650,
              child: buildSwiper(),
            ),
            Column(
              children: [
                SafeArea(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Credit Cards",
                            style: GoogleFonts.anton(
                              color: Colors.black, 
                              fontSize: 26
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 500,
                ),

                Text(
                  "Subscriptions",
                  style: GoogleFonts.gelasio(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: subArr.map((sObj) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                      child: Image.asset(
                        sObj["icon"],
                        width: 40,
                        height: 40,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}