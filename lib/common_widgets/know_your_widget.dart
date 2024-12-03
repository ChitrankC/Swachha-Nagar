import 'package:flutter/material.dart';
import 'package:swachha_nagar_v1/consts/fontstyles.dart';
import 'package:swachha_nagar_v1/data/knowyourCity.dart';

class KnowYourWidget extends StatefulWidget {
  const KnowYourWidget({super.key});

  @override
  State<KnowYourWidget> createState() => _KnowYourWidgetState();
}





class _KnowYourWidgetState extends State<KnowYourWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 200,
        child: Row(
          children: [
            Image(
              image: AssetImage(image1),

            ),
            Column(
              children: [
                Text(
                  title1,
                  style: TextStyle(
                    fontFamily: poppins_medium,
                    fontSize: 8,
                    color: Colors.black,
                  ),
                ),
                Text(
                  description1,
                  style: TextStyle(
                    fontFamily: poppins_regular,
                    fontSize: 8,
                    color: Colors.black,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}