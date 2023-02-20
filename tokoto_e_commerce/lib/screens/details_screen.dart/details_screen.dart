import 'package:flutter/material.dart';
import 'package:tokoto_e_commerce/models/product.dart';
import 'package:tokoto_e_commerce/screens/details_screen.dart/components/body.dart';
import 'components/custom_appbar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = '/details_screen';
  @override
  Widget build(BuildContext context) {
     final ProductDetailsScreen arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsScreen;
    return Scaffold(
        backgroundColor: const Color(0xfff5f6f9),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(rating: arguments.product.rating),
        ),
        body:  DetailsScreenBody(product: arguments.product,),
        // CustomAppBar(rating: agrs.product.rating),
        );
  }
}
class ProductDetailsScreen {
  final Product product;

  ProductDetailsScreen({required this.product});
}



