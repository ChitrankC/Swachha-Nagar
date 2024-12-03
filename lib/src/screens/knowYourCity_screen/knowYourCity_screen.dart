import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';
import 'package:swachha_nagar_v1/common_widgets/know_your_widget.dart';
import 'package:swachha_nagar_v1/data/knowyourCity.dart';

class knowYourCityScreen extends StatefulWidget {
  const knowYourCityScreen({super.key});

  @override
  State<knowYourCityScreen> createState() => _knowYourCityScreenState();
}

class _knowYourCityScreenState extends State<knowYourCityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context,  title: "Know Your City",),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 130), // Space to push the image down
                Image(
                  image: AssetImage(Headimage),
                  width: MediaQuery.of(context).size.width*1,
                ),
                KnowYourWidget(),
              ],
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: customNavBar()),
        ],  
      ),
    );
  }
}