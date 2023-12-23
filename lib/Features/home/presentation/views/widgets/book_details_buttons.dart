import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsButtons extends StatelessWidget {
  const BookDetailsButtons({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: "Free",
              textColor: Colors.black,
              backGroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          const SizedBox(
            width: 1,
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                final url = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              text: "Free Preview",
              textColor: Colors.white,
              backGroundColor: const Color(0xffef8262),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
