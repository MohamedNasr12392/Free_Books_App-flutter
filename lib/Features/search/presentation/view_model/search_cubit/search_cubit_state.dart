part of 'search_cubit_cubit.dart';

class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

class SearchCubitInitial extends SearchCubitState {}

class SearchLoadingState extends SearchCubitState {}
class SearchErrorState extends SearchCubitState {
  final String errorMessage ;

  const SearchErrorState({required this.errorMessage});
}
class SearchSuccessState extends SearchCubitState {
  final List<BookModel> books ;

  const SearchSuccessState({required this.books});
}