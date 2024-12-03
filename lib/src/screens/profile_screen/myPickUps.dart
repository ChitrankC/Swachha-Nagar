import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/common_widgets/common_bg_widget.dart';

class myPickUps extends StatefulWidget {
  const myPickUps({super.key});

  @override
  State<myPickUps> createState() => _myPickUpsState();
}

class _myPickUpsState extends State<myPickUps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        
        children: [
          Column(
            children: [
               common_bg_widget(context: context, title: "My Pick Ups"),
      
            ],
          )
      
        ],
      ),
    );
  }
}