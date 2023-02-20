import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  CustomAppBar({required this.rating});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    backgroundColor: Colors.white,
                    primary: kPrimaryColor,
                    padding: EdgeInsets.zero),
                child: SvgPicture.asset(
                  'assets/icons/Back ICon.svg',
                  height: 15,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset('assets/icons/Star Icon.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
