part of 'horizontal_list_cubit.dart';

sealed class HorizontalListState extends Equatable {
  const HorizontalListState();

  @override
  List<Object> get props => [];
}

class HorizontalListInitialState extends HorizontalListState {}

class HorizontalListLoadingState extends HorizontalListState {}
class HorizontalListErrorState   extends HorizontalListState {
  final String errorMessage ;

  const HorizontalListErrorState({required this.errorMessage});
}
class HorizontalListSuccessState extends HorizontalListState {
  final List<BookModel> books ;

  const HorizontalListSuccessState({required this.books});
}

