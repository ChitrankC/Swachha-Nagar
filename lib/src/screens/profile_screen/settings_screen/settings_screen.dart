import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_profile_widgets.dart';
import 'package:swachha_nagar_v1/src/screens/Languages_screen/language_screen.dart';
import 'package:swachha_nagar_v1/src/screens/login_screen/login_screen.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/settings_screen/devicePermission_screen.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/settings_screen/help_screen.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/settings_screen/notification_screen.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/settings_screen/privacyScreen.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/settings_screen/yourActivity_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              common_bg_widget(context: context, title: "Settings"),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(
                  children: [
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Your Activity',
                      onPress: () {
                        Get.to(()=> YouractivityScreen());
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'App language',
                      onPress: () {
                        Get.to(()=> LanguageScreen());
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Notifications',
                      onPress: () {
                        Get.to(()=> NotificationScreen());
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Device permissions',
                      onPress: () {
                        Get.to(()=> DevicepermissionScreen());
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Privacy',
                      onPress: () {
                        Get.to(()=> Privacyscreen());
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Help',
                      onPress: () {
                        Get.to(()=> HelpScreen());
                      },
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}