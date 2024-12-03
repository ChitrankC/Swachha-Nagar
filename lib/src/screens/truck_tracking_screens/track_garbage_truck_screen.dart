import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';
import 'package:swachha_nagar_v1/consts/images.dart';
import 'package:swachha_nagar_v1/src/screens/truck_tracking_screens/track_garbage_truck_screen2.dart';

class TYGT_screen extends StatefulWidget {
  const TYGT_screen({super.key});

  @override
  State<TYGT_screen> createState() => _TYGT_screenState();
}

class _TYGT_screenState extends State<TYGT_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: const AssetImage(basemap),
            width: MediaQuery.of(context).size.width *1,
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: GestureDetector(
              onTap: () {
                Get.to(()=> TGT_screen2());
              },
              child: Image(
                image: const AssetImage(arriving_image),
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