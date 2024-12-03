import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_complain_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_profile_widgets.dart';
import 'package:swachha_nagar_v1/consts/colors.dart';
import 'package:swachha_nagar_v1/consts/fontstyles.dart';
import 'package:swachha_nagar_v1/consts/images.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/myAccount.dart';

class ClickComplain extends StatefulWidget {
  const ClickComplain({super.key});

  @override
  State<ClickComplain> createState() => _ClickComplainState();
}

class _ClickComplainState extends State<ClickComplain> {

  
  

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: primaryColor,
                            
                          ),
                          Text(
                            "Your Location",
                            style: TextStyle(
                              fontFamily: poppins_medium,
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      CustomProfileWidgets(
                          icon: Icons.account_circle_outlined,
                          title: "Choose Catergory",
                          onPress: (){
                          },
                      ),
                      Positioned(
                        left: 10,
                        child: Text(
                          
                          "Description",
                          style: TextStyle(
                            fontFamily: poppins_regular,
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      CustomComplainWidgets(
                          icon: Icons.account_circle_outlined,
                          title: " ",
                          onPress: (){
                          },
                      ),
                      Row(
                        children: [
                          CustomComplainWidgets(
                          icon: Icons.account_circle_outlined,
                          title: "Overflow Garbage",
                          onPress: (){},
                          ),
                          CustomComplainWidgets(
                          icon: Icons.account_circle_outlined,
                          title: "Illegal dumpings",
                          onPress: (){},
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image(
                          image: AssetImage(backGround),
                          width: MediaQuery.of(context).size.width *1 ,
                        ),
                        Positioned(
                          left: 35,
                          top: 240,
                          child: Image(
                            image: AssetImage(pills),
                            width: MediaQuery.of(context).size.width * 0.8,
                          ),
                        )
                      ]
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
          common_bg_widget(context: context, title: "Click & Complain"),
          Align(alignment: Alignment.bottomCenter, child: customNavBar()),
        ],
      )
    );
  }
}