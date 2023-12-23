import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_cubit_state.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit(this.searchRepo) : super(SearchCubitInitial());

  SearchRepo searchRepo ;
  var controller = TextEditingController();

  static SearchCubit get(context) => BlocProvider.of(context);

  Future<void> search(String categoryName) async{
    emit(SearchLoadingState());
    
    var result = await searchRepo.searchBooksByCategory(categoryName);

    result.fold((failure) {
      emit(SearchErrorState(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SearchSuccessState(books: books));
    });
  }
}
