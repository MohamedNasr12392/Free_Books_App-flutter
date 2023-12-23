import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String categoryName}) async {
    emit(SimilarBooksLoadingState());

    var result = await homeRepo.fetchSimilarBooks(category: categoryName);

    result.fold((failure) {
      emit(SimilarBooksErrorState(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccessState(books: books));
    });
  }
}
