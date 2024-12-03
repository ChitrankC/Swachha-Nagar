import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';

class eWaste_screen extends StatefulWidget {
  const eWaste_screen({super.key});

  @override
  State<eWaste_screen> createState() => _eWasteState();
}

class _eWasteState extends State<eWaste_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context,  title: "E-Waste",),
          Align(alignment: Alignment.bottomCenter, child: customNavBar(),)
        ],
      ),
    );
  }
}