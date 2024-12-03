import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          common_bg_widget(context: context, title: "Language_screen")
        ],
      ),
    );
  }
}