import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../componets/constant.dart';
import '../widgets/bottonnav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateHome();
    super.initState();
  }

  _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => BottomMenu(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    Lottie.asset(
      'assets/moneylock.json',
      width: 80,
      height: 80,
      fit: BoxFit.fill,
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: size.width,
                child: Text(
                  AppText.appName,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.ubuntu().fontFamily,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 35,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 72,
                          height: 70,
                          child: Lottie.asset(
                            'assets/moneylock.json',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Center(
                          child: Text(
                            AppText.appVersion,
                            style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 12,
                                fontFamily: GoogleFonts.ubuntu().fontFamily,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
