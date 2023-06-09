import 'package:flutter/material.dart';
import 'package:flutter_day_1/views/pages/product_detail.dart';
import 'package:flutter_day_1/views/pages/viewall.dart';
import 'package:flutter_day_1/widgets/banner.dart';
import 'package:flutter_day_1/widgets/product_banner.dart';
import 'package:flutter_day_1/widgets/title_popular.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        // ignore: non_constant_identifier_names
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 200,
                child: const BannerPromotion(),
              ),
              const SizedBox(
                height: 30,
              ),
              TitlePopular(
                text: 'Popular',
                viewall: 'view all',
                ontap: () {
                  GoRouter.of(context).pushNamed(
                    ViewAll.routename,
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    ProductBanner(
                        ontap: () {
                          //navigate to ProductDetail Page
                          GoRouter.of(context).pushNamed(
                            ProductDetail.rountname,

                            // extra is an object like arguments
                            // we're pass all data with Map
                            extra: ProductDetailArguments(
                                productName: 'Flutter 1',
                                productPrice: 'USD 150',
                                productImagePath: 'assets/image/banner.jpg'),
                          );

                          // Navigator.of(context).pushNamed(
                          //   ProductDetail.rountname,
                          //   arguments: ProductDetailArguments(
                          //     productName: 'Product 1',
                          //     productPrice: 'USD 150',
                          //     productImagePath: 'assets/image/banner.jpg',
                          //   ),
                          // );
                        },
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TitlePopular(text: 'New Arrival', viewall: 'view all'),
              const SizedBox(
                height: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TitlePopular(text: 'Top rate', viewall: 'view all'),
              const SizedBox(
                height: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    ProductBanner(
                        ontap: () {},
                        title: 'Flutter',
                        price: '150\$',
                        imagepath: 'assets/image/banner.jpg'),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
