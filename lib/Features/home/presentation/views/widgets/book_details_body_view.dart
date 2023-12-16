import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          BookDetailsAppBar(),
        ],
      ),
    );
  }
}

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){}, icon:const Icon( Icons.close)) ,
        const Spacer(),
        IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}