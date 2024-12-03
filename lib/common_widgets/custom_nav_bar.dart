

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachha_nagar_v1/consts/colors.dart';
import 'package:swachha_nagar_v1/consts/fontstyles.dart';
import 'package:swachha_nagar_v1/consts/icons.dart';
import 'package:swachha_nagar_v1/src/screens/complains_screen/click_complain.dart';
import 'package:swachha_nagar_v1/src/screens/complains_screen/complaints.dart';
import 'package:swachha_nagar_v1/src/screens/eWaste_screen/eWaste_screen.dart';
import 'package:swachha_nagar_v1/src/screens/home_screen/homeScreen.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/profile_screen.dart';

class customNavBar extends StatefulWidget {
  const customNavBar({super.key});

  @override
  State<customNavBar> createState() => _customNavBarState();
}







List<ImageIcon> navIcons = [
  const ImageIcon(AssetImage(home_icon)),
  const ImageIcon(AssetImage(click_complain)),
  const ImageIcon(AssetImage(eWaste_icon)),
  const ImageIcon(AssetImage(profile_icon)),
  
];
List<String> navTitle = [
   "Home",
   "Click & Complaint",
   "E-Waste",
   "Profile",
];

List<Widget> navId = [
  const Homescreen(),
  const ClickComplain(),
  const eWaste_screen(),
  const ProfileScreen(),
];




int selectedIndex = 0;

class _customNavBarState extends State<customNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: const EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 20,
            spreadRadius: 10,
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: navIcons.map((icon) {
          int index = navIcons.indexOf(icon);
          bool isSelected = selectedIndex == index;
          return Material(

          color: Colors.transparent,
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
              Get.offAll(() => navId[index]);
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top:15,
                      bottom: 0,
                      left: 25,
                      right: 25,
                    ),
                    child: ImageIcon(
                      icon.image,
                      color: isSelected? primaryColor : Colors.grey,
                    )
                  ),
                  Text(navTitle[index],style: TextStyle(color: isSelected? primaryColor : Colors.grey, fontSize: 12, fontFamily: poppins_regular),),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        );}).toList()),

      );
  }
}