import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context, title: "Help")
        ],
      ),
    );
  }
}