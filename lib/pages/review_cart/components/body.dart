import 'package:devyapp/constants.dart';
import 'package:devyapp/models/review_cart_model.dart';
import 'package:devyapp/providers/review_cart_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../widgets/single_item.dart';

class Body extends StatelessWidget {
  ReviewCartProvider? reviewCartProvider;
  Body({this.reviewCartProvider, Key? key}) : super(key: key);

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
                    onDelete: () {
                      Alert(
                        context: context,
                        type: AlertType.error,
                        title: "Eliminar producto",
                        desc:
                            "¿Estas seguro de borrar el producto de tu carrito?",
                        buttons: [
                          DialogButton(
                            child: const Text(
                              "Cancelar",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            color: Colors.black12,
                          ),
                          DialogButton(
                            child: const Text(
                              "Eliminar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              reviewCartProvider.reviewCartDataDelete(data.cartId);
                              Navigator.of(context).pop();
                            },
                            color: kSecondaryColor,
                          )
                        ],
                      ).show();
                    },
                  ),
                ],
              );
            });
  }
}
