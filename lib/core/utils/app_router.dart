import 'package:bookly_app/Features/home/presentation/views/home.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
// GoRouter configuration

  static const kHomeView = '/homeView' ;
  static const kBookDetailsView = '/bookDetails';

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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
