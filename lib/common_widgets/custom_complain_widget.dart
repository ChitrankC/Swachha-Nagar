import 'package:flutter/material.dart';

class CustomComplainWidgets extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPress;

  const CustomComplainWidgets({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
              ),
              SizedBox(width: 10,)
            ],
          ),
        ),
      ),
    );
  }
}