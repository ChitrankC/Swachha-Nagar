import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swachha_nagar_v1/consts/colors.dart';
import 'package:swachha_nagar_v1/consts/fontstyles.dart';
import 'package:swachha_nagar_v1/src/screens/home_screen/homeScreen.dart';
import 'package:swachha_nagar_v1/src/screens/on_boarding_screens/on_boarding_items.dart';


class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  final controller = OnBoardingItems();
  
  final pageController =  PageController();
  

  bool isLastPage = false;




  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: backgroundColor1,
      bottomSheet: Container(
        color: backgroundColor1,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: 
          isLastPage? getStarted() : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
              
              
              TextButton(
                onPressed: ()=>pageController.jumpToPage(controller.items.length-1), 
                
                child: const Text("Skip")
              ),
              
              
              SmoothPageIndicator(
                controller: pageController, 
                count: controller.items.length,
                onDotClicked: (index)=>pageController.animateToPage(index, duration: const Duration(milliseconds: 600), curve: Curves.easeOut ),
                effect: const WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,

                  activeDotColor: primaryColor,
          
                ),
              ),
              
              
              TextButton(
                onPressed: ()=>pageController.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.easeOut), 
                child: const Text("Next")
              ),
              

              
  
            ],
          
          ),
      ),
      // backgroundColor: backgroundColor2,
      body: 
      
      
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),

        child:PageView.builder(
                onPageChanged: (index)=> setState(()=>isLastPage = controller.items.length-1 == index),
                itemCount: controller.items.length,
                controller: pageController,
                itemBuilder: (context, index){
                  return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            
                            controller.items[index].image,
                            width: 300,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            controller.items[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: primaryColor,
                              fontSize: 26,
                              fontFamily: poppins_semibold,
                              
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Text(
                            controller.items[index].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: backgroundColor2,
                              fontSize: 16,
                              fontFamily: poppins_medium,
                            )
                          ),
                    ],
                  );
          }),
      ),
    );
  }


  //get started button
  
  Widget getStarted(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: primaryColor,
      ),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,

      child: TextButton(
        onPressed: () async{
          final pres = await SharedPreferences.getInstance();
          pres.setBool("onboarding", true);

          if(!mounted)return;

          Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Homescreen()),
          (Route<dynamic> route) => false, // This removes all previous routes
        );
        }, 
        child: const Text("Get started", style: TextStyle(fontFamily: poppins_semibold, color: backgroundColor1),),
        ),
    );
  }









}