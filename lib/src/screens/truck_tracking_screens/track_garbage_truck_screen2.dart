import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';
import 'package:swachha_nagar_v1/consts/images.dart';
import 'package:swachha_nagar_v1/src/screens/home_screen/homeScreen.dart';

class TGT_screen2 extends StatefulWidget {
  const TGT_screen2({super.key});

  @override
  State<TGT_screen2> createState() => _TGT_screen2State();
}

class _TGT_screen2State extends State<TGT_screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: const AssetImage(basemap2),
            width: MediaQuery.of(context).size.width *1,
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: GestureDetector(
              onTap: () {
                Get.to(()=> Homescreen());
              },
              child: Image(
                image: const AssetImage(arriving_image2),
                width: 300,
                height: 200,
                fit: BoxFit.contain,
                
              ),
            ),
          ),
          common_bg_widget(context: context,  title: "Track Your Truck",),
          Align(alignment: Alignment.bottomCenter, child: customNavBar()),
        ],
      ),
    );
  }
}