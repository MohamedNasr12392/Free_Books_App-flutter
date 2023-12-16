import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsButtons extends StatelessWidget {
  const BookDetailsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "19.99",
              textColor: Colors.black,
              backGroundColor: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16) , bottomLeft: Radius.circular(16)),
            ),
          ),
          SizedBox(width: 1,) ,
          Expanded(
            child: CustomButton(
              text: "Free Preview",
              textColor: Colors.white,
              backGroundColor: Color(0xffef8262),
              borderRadius: BorderRadius.only(topRight: Radius.circular(16) , bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}