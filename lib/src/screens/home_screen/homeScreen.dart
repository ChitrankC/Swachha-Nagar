import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/home_screen_widgets.dart';
import 'package:swachha_nagar_v1/consts/constants.dart';
import 'package:swachha_nagar_v1/consts/images.dart';
import 'package:swachha_nagar_v1/src/screens/Collection_schedule_screen/collection_schedule_screen.dart';
import 'package:swachha_nagar_v1/src/screens/bins_around_you_screen/bins_around_you_screen.dart';
import 'package:swachha_nagar_v1/src/screens/complains_screen/complaints.dart';
import 'package:swachha_nagar_v1/src/screens/eventsAndRemainder_screen/eventsAndRemainder_screen.dart';
import 'package:swachha_nagar_v1/src/screens/knowYourCity_screen/knowYourCity_screen.dart';
import 'package:swachha_nagar_v1/src/screens/schemes_screen/schemes_screen.dart';
import 'package:swachha_nagar_v1/src/screens/truck_tracking_screens/track_garbage_truck_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          Column(
            children: [
              common_bg_widget(context: context, title: "Home",),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.all(20.0),
                child:Container(
                      // color: primaryColor,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              homeScreenWidget(image: track_garbage_truck, onPress: (){Get.to(TYGT_screen());}),
                              10.widthBox,
                              homeScreenWidget(image: collection_schedule, onPress: (){Get.to(collectionSchedule_screen());}),
                              
                            ],
                          ),
                          Row(
                            children: [
                              homeScreenWidget(image: bins_around, onPress: (){Get.to(BAY_screen());}),
                              10.widthBox,
                              homeScreenWidget(image: complaints, onPress: (){Get.to(Complaints());}),
                              
                            ],
                          ),
                          Row(
                            children: [
                              homeScreenWidget(image: create_events, onPress: (){Get.to(EventsandremainderScreen());}),
                              10.widthBox,
                              homeScreenWidget(image: schemes, onPress: (){Get.to(SchemesScreen());}),
                            ],
                          ),
                          Row(
                            children: [
                              homeScreenWidget(image: facebook, onPress: (){}),
                              10.widthBox,
                              homeScreenWidget(image: know_your_city, onPress: (){Get.to(knowYourCityScreen());}),
                            ],
                          )
                        ],
                      ),
                    ),
                  
                  ),

            ],
          ),
          Align(alignment: Alignment.bottomCenter, child: customNavBar(),)
          
        ],
        
              
      ),
      
    );
  }
}