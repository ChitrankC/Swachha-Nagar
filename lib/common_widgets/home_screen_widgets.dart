import 'package:flutter/material.dart';

Widget homeScreenWidget({onPress, String? image}){
  return GestureDetector(
      onTap: onPress, // Action when the widget is tapped
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 35,
            right: 35,
            top: 20,
            bottom: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // The truck image with a placeholder if the image is null
              image != null
                  ? Image.asset(
                      image,
                      height: 100,
                      width: 100,
                    )
                  : const Icon(
                      Icons.image_not_supported,
                      size: 80,
                      color: Colors.white,
                    ),
              const SizedBox(height: 10),

            ],
          ),
        ),
      ),
    );
}
