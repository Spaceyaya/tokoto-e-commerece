import 'package:flutter/material.dart';

import '../../../../consts.dart';
import '../../../../models/cart.dart';
import '../../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key, required this.cart,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff5f6f9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              demoCarts[0].product.title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(TextSpan(
                text: '\$${demoCarts[0].product.price}}',
                style: const TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                      text: ' x${demoCarts[0].numOfItem}',
                      style: const TextStyle(color: kTextColor))
                ])),
          ],
        )
      ],
    );
  }
}
