import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';

class DevicepermissionScreen extends StatefulWidget {
  const DevicepermissionScreen({super.key});

  @override
  State<DevicepermissionScreen> createState() => _DevicepermissionScreenState();
}

class _DevicepermissionScreenState extends State<DevicepermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context,title: "Device Permissions")
        ],
      ),
    );
  }
}