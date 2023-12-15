
import 'package:bookly_app/core/utils/assets_paths.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: AspectRatio(
              aspectRatio: 3/4,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(AssetsPaths.testImage))),
              ),
            ),
          ),
          const SizedBox(width: 10,) ,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: 'GT Sectra Fine'
                    )
                  ),
                ),
                const SizedBox(height: 3,),
                const Text(
                  "J.K. Rowling",
                  maxLines: 1,
                  style: Styles.textStyle14
                ),
                const SizedBox(height: 3,),
                const Row(
                  children: [
                    Text(
                      "19.99",
                      maxLines: 1,
                      style: Styles.textStyle20
                    ),
                    SizedBox(width: 2,),
                    Icon(Icons.currency_pound) ,
                    Spacer(),
                    Text(
                      "4.8",
                      maxLines: 1,
                      style: Styles.textStyle16
                    ),
                    Text(
                      "(2798)",
                      maxLines: 1,
                      style: Styles.textStyle14
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}