import 'package:flutter/material.dart';
import 'package:shop/core/resources/manager_font_size.dart';
import 'package:shop/core/resources/manager_font_weight.dart';
import 'package:shop/core/resources/manager_height.dart';
import 'package:shop/core/resources/manager_string.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/routes.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, Routes.outBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(ManagerAssets.splash1,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
                child: Image.asset(ManagerAssets.splash2,
                  filterQuality: FilterQuality.high,
                ),
            ),
            Align(
              alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children : [
                  Image.asset(ManagerAssets.splash3,
                    filterQuality: FilterQuality.high,
                  ),
                    SizedBox(height: ManagerHeight.h24,),
                    Text(ManagerStrings.appName,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}