import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_profile_widgets.dart';
import 'package:swachha_nagar_v1/src/screens/login_screen/login_screen.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/helpline_screen/helpline_screen.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/myAccount.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/myPickUps.dart';
import 'package:swachha_nagar_v1/src/screens/profile_screen/settings_screen/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          common_bg_widget(context: context, title: "My Profile"),
          


          Column(
        children: [
          // Profile section
          SizedBox(height: 40),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.person, size: 50),
          ),
          SizedBox(height: 10),
          Text(
            'Active Citizen',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ]
        ),
        Expanded(
            child: ListView(
              children: [
                CustomProfileWidgets(
                  icon: Icons.account_circle_outlined,
                  title: 'My Account',
                  onPress: () {
                    Get.to(()=>myAccount());
                  },
                ),
                CustomProfileWidgets(
                  icon: Icons.local_shipping_outlined,
                  title: 'My pickup',
                  onPress: () {
                    Get.to(() => myPickUps());
                  },
                ),
                CustomProfileWidgets(
                  icon: Icons.settings_outlined,
                  title: 'Setting',
                  onPress: () {
                    Get.to(()=> SettingsScreen());
                  },
                ),
                CustomProfileWidgets(
                  icon: Icons.phone_in_talk_outlined,
                  title: 'Helpline',
                  onPress: () {
                    Get.to(()=>HelplineScreen());
                  },
                ),
                CustomProfileWidgets(
                  icon: Icons.logout_outlined,
                  title: 'Logout',
                  onPress: () {
                    Get.to(()=>loginscreen());
                  },
                ),
              ],
            ),
          ),




          customNavBar(),
        ],
      )
    );
  }
}