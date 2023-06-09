import 'package:go_router/go_router.dart';
import '../views/main_page.dart';
import '../views/pages/product_detail.dart';
import '../views/pages/viewall.dart';

final AppRoute = GoRouter(
  routes: [
    GoRoute(
      path: '/product_detail',
      name: 'product_detail',
      builder: (context, state) {
        final argument = state.extra as ProductDetailArguments;
        return ProductDetail(arguments: argument);
      },
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => MyHomePage(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => MyHomePage(),
    ),
    GoRoute(
      path: '/view_all',
      name: 'view_all',
      builder: (context, state) => ViewAll(),
    ),
  ],
);
