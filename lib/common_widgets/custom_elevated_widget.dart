import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/consts/constants.dart';
import 'package:swachha_nagar_v1/consts/fontstyles.dart';


Widget customElevatedWidget({onPress, color, textColor, String? title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress, child: title!.text.color(textColor).fontFamily(poppins_medium).make(),
  );
}