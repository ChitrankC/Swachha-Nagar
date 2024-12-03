import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';
import 'package:swachha_nagar_v1/consts/images.dart';

class BAY_screen extends StatefulWidget {
  const BAY_screen({super.key});

  @override
  State<BAY_screen> createState() => _BAY_screenState();
}

class _BAY_screenState extends State<BAY_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(bins_page),
            width: MediaQuery.of(context).size.width *1,
          ),
          common_bg_widget(context: context,  title: "Bins Around You",),
          Align(alignment: Alignment.bottomCenter, child: customNavBar()),
        ],
      ),
    );
  }
}