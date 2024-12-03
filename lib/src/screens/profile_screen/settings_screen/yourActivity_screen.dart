import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';

class YouractivityScreen extends StatefulWidget {
  const YouractivityScreen({super.key});

  @override
  State<YouractivityScreen> createState() => _YouractivityScreenState();
}

class _YouractivityScreenState extends State<YouractivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context, title: "Your Activity"),
        ],
      ),
    );
  }
}