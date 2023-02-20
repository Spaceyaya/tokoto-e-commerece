import 'package:flutter/material.dart';

import 'package:tokoto_e_commerce/screens/home/components/popular_product.dart';


import 'package:tokoto_e_commerce/size_config.dart';

import 'special_offer.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_healder.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            const HomeHealder(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const DiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const Categories(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const SpecialOffer(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const PopularProduct(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}
