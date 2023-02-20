import 'package:flutter/material.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../consts.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';


class ColorsDot extends StatelessWidget {
  const ColorsDot({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int isSelected = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => BuildDot(
              color: product.colors[index],
              isSelected: isSelected == index,
            ),
          ),
          const Spacer(),
          RoundedIconBtn(icon: Icons.remove, press: () {}),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          RoundedIconBtn(icon: Icons.add, press: () {}),
        ],
      ),
    );
  }
}

class BuildDot extends StatelessWidget {
  const BuildDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
          // color: product.colors[0],
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
