import 'package:swachha_nagar_v1/src/screens/on_boarding_screens/on_boarding_info.dart';

class OnBoardingItems {
  List<OnBoardingInfo> items = [
    OnBoardingInfo(title: "Track your Garbage Truck", 
    description: "Know where the garbage truck is and don’t miss to dump your trash", 
    image: "assets/images/on_boarding_images/onboardingimage1.png"),
  
    OnBoardingInfo(title: "Get real time notification.", 
    description: "Receive instant notifications when a garbage collector is within a one-kilometer radius of your location.", 
    image: "assets/images/on_boarding_images/onboardingimage2.png"),


    OnBoardingInfo(title: "Click and Upload", 
    description: "Click and upload photo of trash dump anywhere anytime, your complain will be file.", 
    image: "assets/images/on_boarding_images/onboardingimage3.png"),


    OnBoardingInfo(title: "Schedule your Collection", 
    description: "Set reminders for collection days and times to never miss a pickup", 
    image: "assets/images/on_boarding_images/onboardingimage4.png"),
  ];

  
}