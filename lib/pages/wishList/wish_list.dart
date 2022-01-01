import 'package:devyapp/models/product_model.dart';
import 'package:devyapp/models/review_cart_model.dart';
import 'package:devyapp/providers/review_cart_provider.dart';
import 'package:devyapp/providers/wish_list_provider.dart';
import 'package:devyapp/widgets/single_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../constants.dart';
import '../home/components/drawer.dart';

class WishList extends StatefulWidget {
  WishListProvider? wishListProvider;
  WishList({this.wishListProvider,Key? key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  WishListProvider? wishListProvider;

  @override
  Widget build(BuildContext context) {
    WishListProvider wishListProvider = Provider.of(context);
    wishListProvider.getWishListData();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTerciaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Lista de deseos'),
      ),
      body: ListView.builder(
          itemCount: wishListProvider.getWishList.length,
          itemBuilder: (context, index) {
            ProductModel data = wishListProvider.getWishList[index];
            return Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                SingleItem(
                  productImage: data.productImage,
                  productName: data.productName,
                  /* productNormalPrice:  */
                  productPrice: data.productPrice,
                  productId: data.productId,
                  productQuantity: data.productQuantity,
                  onDelete: (){
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
                              wishListProvider.deleteWishtList(data.productId);
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
          }),
    );
  }
}
