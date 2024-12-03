import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';
import 'package:swachha_nagar_v1/common_widgets/custom_nav_bar.dart';

class EventsandremainderScreen extends StatefulWidget {
  const EventsandremainderScreen({super.key});

  @override
  State<EventsandremainderScreen> createState() => _EventsandremainderScreenState();
}

class _EventsandremainderScreenState extends State<EventsandremainderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context,  title: "Events and Remainder",),
          Align(alignment: Alignment.bottomCenter, child: customNavBar()),
        ],
      ),
    );
  }
}