
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation implements SearchRepo {

  final ApiService apiService ;

  SearchRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> searchBooksByCategory(String categoryName) async {
    try{
    var data = await apiService.get(
          urlEndPoint: "volumes?Filtering=free-ebooks&Sorting=newest &q=$categoryName'");

      List<BookModel> books = [];

      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } catch (e) {
      if (e is DioException){
        return left(ServerFailure.fromDioError(e)); 
      }
      return left(ServerFailure(e.toString()));
      
    }
  }

}