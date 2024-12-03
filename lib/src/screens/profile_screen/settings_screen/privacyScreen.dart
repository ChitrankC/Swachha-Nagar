import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';

class Privacyscreen extends StatefulWidget {
  const Privacyscreen({super.key});

  @override
  State<Privacyscreen> createState() => _PrivacyscreenState();
}

class _PrivacyscreenState extends State<Privacyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context,title: "Privacy Settings")
        ],
      ),
    );
  }
}