import 'package:bookly_app/Features/home/presentation/views/widgets/newest__books_list.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/horizontal_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: CustomAppBar(),
              ),
              const HorizontalListView(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .06,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Best Seller",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: NewestBooksList(),
          ),
        ),
      ],
    );
  }
}
