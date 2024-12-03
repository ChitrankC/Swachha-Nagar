import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_profile_widgets.dart';


class HelplineScreen extends StatefulWidget {
  const HelplineScreen({super.key});

  @override
  State<HelplineScreen> createState() => _HelplineScreenState();
}

class _HelplineScreenState extends State<HelplineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context,  title: "Helpline",),
          Column(
            children: [
              common_bg_widget(context: context, title: "Settings"),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(
                  children: [
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Nagar Nigam Control Room',
                      onPress: () {
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Mayor Helpline',
                      onPress: () {
                        
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Garbage Truck Driver',
                      onPress: () {
                        
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Police Dervic',
                      onPress: () {
                        
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Ambulance Service',
                      onPress: () {
                        
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Bin Collector',
                      onPress: () {
                        
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'State Helpline',
                      onPress: () {
                        
                      },
                    ),
                    CustomProfileWidgets(
                      icon: Icons.settings_outlined,
                      title: 'Local Office',
                      onPress: () {
                        
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