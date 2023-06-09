import 'package:flutter/material.dart';
import 'package:flutter_day_1/widgets/banner_img.dart';

class BannerPromotion extends StatelessWidget {
  const BannerPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        SizedBox(
          width: 16,
        ),
        BannerImg(image: 'assets/image/image1.jpg'),
        SizedBox(
          width: 16,
        ),
        BannerImg(image: 'assets/image/image1.jpg'),
        SizedBox(
          width: 16,
        ),
        BannerImg(image: 'assets/image/image1.jpg'),
        SizedBox(
          width: 16,
        ),
        BannerImg(image: 'assets/image/image1.jpg'),
        SizedBox(
          width: 16,
        ),
        BannerImg(image: 'assets/image/image1.jpg'),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
