import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/consts/colors.dart';
import 'package:swachha_nagar_v1/consts/constants.dart';
import 'package:swachha_nagar_v1/consts/fontstyles.dart';

Widget customTextField({String? hint, controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextFormField(
        style: const TextStyle(
          fontSize: 12,
        ),
        decoration: InputDecoration(
          
          
          hintStyle: const TextStyle(
            fontFamily: poppins_light,
            color: grey,
            fontSize: 12,
                        
          ),
          hintText: hint,

                        
          isDense: true,
          fillColor: Vx.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: primaryColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: primaryColor
              )
           )
                        
          ),
      ),
    ],
  );
}