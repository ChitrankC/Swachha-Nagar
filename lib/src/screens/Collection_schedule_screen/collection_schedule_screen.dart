import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';
import 'package:swachha_nagar_v1/consts/fontstyles.dart';
import 'package:swachha_nagar_v1/consts/images.dart';

class collectionSchedule_screen extends StatefulWidget {
  const collectionSchedule_screen({super.key});

  @override
  State<collectionSchedule_screen> createState() => _collectionSchedule_screenState();
}

class _collectionSchedule_screenState extends State<collectionSchedule_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              common_bg_widget(context: context,  title: "Collecton Schedule",),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Current Week Schedule",
                  style: TextStyle(
                    fontFamily: poppins_medium,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                child: Image(image: AssetImage(schedule_image),),
              )

            ],
          ),
          
          Align(alignment: Alignment.bottomCenter, child: customNavBar()),
        ],
      ),
    );
  }
}