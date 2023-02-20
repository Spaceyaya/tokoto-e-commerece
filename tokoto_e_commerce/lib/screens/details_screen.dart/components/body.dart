import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/components/deafault_button.dart';
import 'package:tokoto_e_commerce/screens/details_screen.dart/components/product_description.dart';
import 'package:tokoto_e_commerce/screens/details_screen.dart/components/product_img.dart';
import 'package:tokoto_e_commerce/screens/details_screen.dart/components/top_rounded_container.dart';
import 'package:tokoto_e_commerce/size_config.dart';
import '../../../models/product.dart';
import 'colors_dots.dart';

class DetailsScreenBody extends StatelessWidget {
  final Product product;
  const DetailsScreenBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImg(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
              ],
            ),
          ),
          TopRoundedContainer(
            color: const Color(0xfff6f7f9),
            child: Column(
              children: [
                ColorsDot(product: product),
                TopRoundedContainer(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.15,
                      right: SizeConfig.screenWidth * 0.15,
                      top: getProportionateScreenWidth(15),
                      bottom: getProportionateScreenWidth(40),
                    ),
                    child: DefaultButton(text: 'Add to cart', press: () {}),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
