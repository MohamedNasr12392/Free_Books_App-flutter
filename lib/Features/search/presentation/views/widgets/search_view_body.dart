import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/Features/search/presentation/view_model/search_cubit/search_cubit_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchCubitState>(
      builder: (context, state) {
        if (state is SearchSuccessState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchTextField(),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Search Result',
                  style: Styles.textStyle18,
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: SearchResultListView(
                    books: state.books,
                  ),
                ),
              ],
            ),
          );
        } else if (state is SearchErrorState) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.books});

  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(
            book: books[index],
          ),
        );
      },
    );
  }
}
