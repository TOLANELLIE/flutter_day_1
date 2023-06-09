import 'package:flutter/material.dart';
import 'package:flutter_day_1/route/approute.dart';

void main() {
  runApp(MyAppRoot());
}

class MyAppRoot extends StatelessWidget {
  MyAppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: AppRoute,

      // initialRoute: '/',
      // routes: {
      //   ''
      //   'main': (context) => MyHomePage(),
      //   'product_detail': (context) => ProductDetail(),
      //   'view_all': (context) => ViewAll(),
      // },
      // onUnknownRoute: (Settings) {
      //   return MaterialPageRoute(
      //     builder: (context) => NotFound(),
      //   );
      // },
      // ignore: body_might_complete_normally_nullable

      //
      // onGenerateRoute: (routesettings) {
      //   switch (routesettings.name) {
      //     case '/':
      //       return MaterialPageRoute(
      //         builder: (context) => MyHomePage(),
      //       );
      //     case '/main':
      //       return MaterialPageRoute(
      //         builder: (context) => MyHomePage(),
      //       );
      //     case '/view_all':
      //       return MaterialPageRoute(
      //         builder: (context) => ViewAll(),
      //       );
      //     case ProductDetail.rountname:
      //       var argument = routesettings.arguments as ProductDetailArguments;
      //       return MaterialPageRoute(
      //         builder: (context) => ProductDetail(
      //           arguments: argument,
      //         ),
      //       );
      //     default:
      //       return MaterialPageRoute(
      //         builder: (context) => NotFound(),
      //       );
      //   }
      // },
    );
  }
}
