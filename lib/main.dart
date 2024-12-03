import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swachha_nagar_v1/consts/app_data.dart';
import 'package:swachha_nagar_v1/src/screens/splash_screens/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'consts/consts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding")??false;
  runApp(MyApp(onboarding: onboarding));
}

class MyApp extends StatelessWidget {

  final bool onboarding;
  const MyApp({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        // fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
