import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context,title: "Notification Settings")
        ],
      ),
    );
  }
}