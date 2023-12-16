import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BookRate extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRate({super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6.3,) ,
        const Text("4.8", maxLines: 1, style: Styles.textStyle16),
        const SizedBox(width: 5,),
        Opacity(opacity: .5 , child: Text("(2798)", maxLines: 1, style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600))),
      ],
    );
  }
}
