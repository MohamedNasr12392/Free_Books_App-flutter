import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/home.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo_imp.dart';
import 'package:bookly_app/Features/search/presentation/view_model/search_cubit/search_cubit_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
// GoRouter configuration

  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetails';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
            create: (context) =>
                SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
            child: BookDetailsView(
              bookModel: state.extra as BookModel,
            )),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(getIt.get<SearchRepoImplementation>())..search('programming'),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
