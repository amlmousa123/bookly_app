import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  /* static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const SplashView()
        ),
        GoRoute(
            path: '/homeView',
            builder: (context, state) => const HomeView()
        ),
      ]
  );*/

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashView());

      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case homeDetailsScreen:
        final book = settings.arguments as BookModel;
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) =>
                      SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
                  child: BookDetailsView(
                    book: book,
                  ),
                ));
    }
  }
}
