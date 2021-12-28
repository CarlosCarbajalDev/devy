import 'package:devyapp/models/review_cart_model.dart';
import 'package:devyapp/providers/review_cart_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../../widgets/single_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    reviewCartProvider.getReviewCartData();
    /* Tal vez deberia ser solo stack */
    return reviewCartProvider.getReviewCartDataList.isEmpty
    ? const Center(
      child: Text("Aun no agregas producto a tu carrito"),
    )
    : ListView.builder(
        itemCount: reviewCartProvider.getReviewCartDataList.length,
        itemBuilder: (context, index) {
          ReviewCartModel data =
              reviewCartProvider.getReviewCartDataList[index];
          return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SingleItem(
                productImage: data.cartImage,
                productName: data.cartName,
                /* productNormalPrice:  */
                productPrice: data.cartPrice,
                productId: data.cartId,
                productQuantity: data.cartQuantity,
              ),
            ],
          );
        });
  }
}
