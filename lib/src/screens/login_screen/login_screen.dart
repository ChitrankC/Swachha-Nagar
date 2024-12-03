import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_elevated_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_textfield_widget.dart';
import 'package:swachha_nagar_v1/consts/colors.dart';
import 'package:swachha_nagar_v1/consts/constants.dart';
import 'package:swachha_nagar_v1/consts/fontstyles.dart';
import 'package:swachha_nagar_v1/consts/strings.dart';
import 'package:swachha_nagar_v1/src/screens/login_screen/otp_screen.dart';
import 'package:swachha_nagar_v1/src/screens/on_boarding_screens/on_boarding_view.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => loginscreenState();
}

class loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                children: [
                    (context.screenHeight * 0.1).heightBox,
                    100.heightBox,
                    "LOG IN".text.fontFamily(poppins_medium).color(primaryColor).size(26).make(),
                    30.heightBox,
                    RichText(text: const TextSpan(
                        text: "Enter ",
                        style: TextStyle(fontFamily: poppins_medium, color: Vx.black,fontSize: 22),
                        children: <TextSpan>[
                            TextSpan(
                                text: "Mobile Number",
                                style: TextStyle(fontFamily: poppins_medium, color: primaryColor, fontSize: 22),
                            )
                        ]
                    )),
                    "These details are not shared with anyone".text.fontFamily(poppins_medium).color(grey).size(12).make(),
                    Column(
                      children: [
                        customTextField(hint: En_phoneNo),
                      ],
                    ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 160).make(),
                    20.heightBox,
                    "OR".text.fontFamily(poppins_medium).color(grey).size(16).make(),
                    20.heightBox,
                    
                    customElevatedWidget(onPress: (){Get.to(() => const OnBoardingView());}, color: white, textColor: black, title: Connect_google),
                    customElevatedWidget(onPress: (){Get.to(() => const OnBoardingView());}, color: white, textColor: black, title: Connect_facebook),

                    
                    100.heightBox,

                    customElevatedWidget(onPress: (){Get.to(() => const OtpScreen());}, color: primaryColor, textColor: white, title: "Send OTP"),
                    
                ],
            ),
        ),
    );
  }
}