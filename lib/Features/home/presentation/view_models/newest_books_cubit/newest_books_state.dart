part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}


class NewestBooksLoadingState extends NewestBooksState {}
class NewestBooksErrorState   extends NewestBooksState {
  final String errorMessage ;

  const NewestBooksErrorState({required this.errorMessage});
}
class NewestBooksSuccessState extends NewestBooksState {
  final List<BookModel> books ;

  const NewestBooksSuccessState({required this.books});
}