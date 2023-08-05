 import 'package:flutter/material.dart';
import 'package:shop/core/resources/manager_assets.dart';
import 'package:shop/core/resources/manager_colors.dart';
import 'package:shop/core/resources/manager_font_size.dart';
import 'package:shop/core/resources/manager_font_weight.dart';
import 'package:shop/core/resources/manager_height.dart';
import 'package:shop/core/resources/manager_raduis.dart';
import 'package:shop/core/resources/manager_string.dart';
import 'package:shop/core/resources/manager_width.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({super.key});

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ManagerColors.transparent,
        leading: IconButton(onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: ManagerWidth.w30,
          vertical: ManagerHeight.h34,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ManagerAssets.outBoarding1),
            Spacer(),
            Text(ManagerStrings.outBoardingTitle1,style: TextStyle(
              fontSize: ManagerFontSizes.s26,
              fontWeight: ManagerFontWeight.bold,
            ),
            ),
            Spacer(),
            Container(
              height: ManagerHeight.h80,
              child: Text(ManagerStrings.outBoardingSubTitle1,style: TextStyle(
                fontWeight: ManagerFontWeight.regular,
              ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ManagerWidth.w8,
                  height: ManagerHeight.h8,
                  margin: EdgeInsetsDirectional.only(end: ManagerWidth.w12,),
                  decoration: BoxDecoration(
                    color: ManagerColors.black,
                    borderRadius: BorderRadius.circular(ManagerRadius.r6),
                  ),
                ),
                Container(
                  width: ManagerWidth.w8,
                  height: ManagerHeight.h8,
                  margin: EdgeInsetsDirectional.only(end: ManagerWidth.w12,),
                  decoration: BoxDecoration(
                    color: ManagerColors.progressIndicatorColor,
                    borderRadius: BorderRadius.circular(ManagerRadius.r6),
                  ),
                ),
                Container(
                  width: ManagerWidth.w8,
                  height: ManagerHeight.h8,
                  margin: EdgeInsetsDirectional.only(end: ManagerWidth.w12,),
                  decoration: BoxDecoration(
                    color: ManagerColors.progressIndicatorColor,
                    borderRadius: BorderRadius.circular(ManagerRadius.r6),
                  ),
                ),
                Container(
                  width: ManagerWidth.w8,
                  height: ManagerHeight.h8,
                  margin: EdgeInsetsDirectional.only(end: ManagerWidth.w12,),
                  decoration: BoxDecoration(
                    color: ManagerColors.progressIndicatorColor,
                    borderRadius: BorderRadius.circular(ManagerRadius.r6),
                  ),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ManagerColors.primaryColor,
              ),
              onPressed: (){}, child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(flex: 5,),
                Text(ManagerStrings.start,style: TextStyle(
                  fontSize: ManagerFontSizes.s16,
                  fontWeight: ManagerFontWeight.regular,
                  color: ManagerColors.white,
                ),
                ),
                Spacer(flex: 4,),
                Icon(Icons.arrow_forward,
                color: ManagerColors.white,),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
