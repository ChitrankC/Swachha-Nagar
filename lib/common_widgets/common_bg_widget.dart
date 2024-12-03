import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachha_nagar_v1/consts/colors.dart';
import 'package:swachha_nagar_v1/consts/fontstyles.dart';
import 'package:swachha_nagar_v1/src/screens/home_screen/homeScreen.dart';

Widget common_bg_widget({ String? title, required BuildContext context}){

  bool canGoBack = Navigator.canPop(context);
  return Container(
      height: MediaQuery.of(context).size.height * 0.15, // Adjust as needed
      width: double.infinity,
      decoration: const BoxDecoration(
        color: primaryColor, // Green background
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ), // Rounded corners
      ),
      child: Stack(
        alignment: Alignment.bottomCenter, // Align the headline in the center
        children: [
          Positioned(
            left: 10, // Position back button on the leftmost side
            child: InkWell(
                borderRadius: BorderRadius.circular(30), // Adds ripple effect within this area
                onTap: () {
                  canGoBack ? Get.back() : Get.offAll(() => const Homescreen());
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 22), // Adjust the padding here
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),

          ),
          
            
          Padding(
            padding: const EdgeInsets.only(
              bottom: 15,
            ),
            child: Text(
                title!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: poppins_medium,
                ),
              ),
          ),
        ],
      ),
    );
}