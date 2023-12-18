import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'horizontal_list_states.dart';

class HorizontalListCubit extends Cubit<HorizontalListState> {
  final HomeRepo homeRepo;

  HorizontalListCubit(this.homeRepo) : super(HorizontalListInitialState());

  Future<void> fetchHorizontalListBooks() async {
    emit(HorizontalListLoadingState());

    var books = await homeRepo.fetchHorizontalListBooks();

    books.fold((failure) {
      emit(HorizontalListErrorState(errorMessage: failure.errorMessage));
    }, (books) {
      emit(HorizontalListSuccessState(books: books));
    });
  }
}
