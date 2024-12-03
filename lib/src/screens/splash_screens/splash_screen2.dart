import 'package:swachha_nagar_v1/common_widgets/app_logo_widget.dart';
import 'package:swachha_nagar_v1/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachha_nagar_v1/src/screens/on_boarding_screens/on_boarding_view.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen2> {
  
  
  //method to decide screen redirection after splash screen
  decideRedirectScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      //using getx
      Get.to(()=>const OnBoardingView());
    });
  }

  @override
  void initState() {
    decideRedirectScreen();
    // TODO: implement initState
    super.initState();
    


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body:Center(
        child: Container(
          child: app_logo_widget(), 
        ),
      )
    );

  }
}
