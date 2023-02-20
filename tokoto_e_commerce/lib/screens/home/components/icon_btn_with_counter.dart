import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);
  final String svgSrc;
  final dynamic numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor.withOpacity(0.1)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              right: 0,
              top: -5,
              child: Container(
                height: getProportionateScreenHeight(16),
                width: getProportionateScreenHeight(16),
                decoration: BoxDecoration(
                    color: const Color(0xffff4848),
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(10),
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
