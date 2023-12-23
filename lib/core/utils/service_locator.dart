import 'package:bookly_app/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo_imp.dart';
import 'package:bookly_app/Features/search/presentation/view_model/search_cubit/search_cubit_cubit.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      getIt.get<ApiService>(),
    ),
  );

  getIt.registerSingleton<SearchRepoImplementation>(
    SearchRepoImplementation(
      apiService: getIt.get<ApiService>(),
    ),
  );

  getIt.registerFactory<SearchCubit>(() => SearchCubit(getIt.get<SearchRepoImplementation>()));
}
