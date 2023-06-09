import 'package:flutter/material.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({
    Key? key,
    required this.title,
    required this.price,
    required this.imagepath,
    required this.ontap,
  }) : super(key: key);

  final String title;
  final String price;
  final String imagepath;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        child: Column(
          children: [
            const SizedBox(
              width: 16,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 220,
              width: 280,
              child: Image.asset(
                imagepath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),

            // ignore: sized_box_for_whitespace
            Container(
              width: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.blue,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.blue,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
