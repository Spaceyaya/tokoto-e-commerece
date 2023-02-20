import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/models/cart.dart';
import 'components/body.dart';
import 'components/check_out_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = '/cart_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const CartScreenBody(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            'Your Cart',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Text(
            '${demoCarts.length} Items',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
      centerTitle: true,
    );
  }
}
