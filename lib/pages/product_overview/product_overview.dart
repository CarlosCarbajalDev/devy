import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devyapp/constants.dart';
import 'package:devyapp/pages/review_cart/search.dart';
import 'package:devyapp/providers/wish_list_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/body.dart';

enum singinCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final String productName;
  final String productImage;
  final int? productPrice;
  final int? productNormalPrice;
  final String productId;

  static String routeName = "/product_overview";
  ProductOverview({
    Key? key,
    required this.productName,
    required this.productImage,
    this.productPrice,
    this.productNormalPrice,
    required this.productId,
  }) : super(key: key);

  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  singinCharacter? _character = singinCharacter.fill;

  Widget bonntonNavigatorBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
    required VoidCallback? onTap,
    /* Maybe required */
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          color: backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 20,
                color: iconColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: TextStyle(color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool wishListBool = false;
/* 
  getWishListBool() {
    FirebaseFirestore.instance
        .collection("WishList")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("YourWishList")
        .doc(widget.productId)
        .get()
        .then((value) => {
              if (mounted)
                {
                  if (value.exists)
                    {
                      setState(() {
                        wishListBool = value.get("wishList");
                      })
                    }
                }
            });
  } */

  getWishListBool() {
    FirebaseFirestore.instance
        .collection("WishList")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("YourWishList")
        .doc(widget.productId)
        .get()
        .then((value) => {
              if (mounted){
                      setState(
                        () {
                          wishListBool = value.get("wishList");
                        },
                      ),
                }
            });
  }

  @override
  Widget build(BuildContext context) {
    WishListProvider wishListProvider = Provider.of(context);
    getWishListBool();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Overview"),
        backgroundColor: const Color(0xff221851),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(widget.productName),
                      subtitle: Text("\$${widget.productPrice}"),
                    ),
                    Container(
                      height: 300,
                      padding: const EdgeInsets.all(40),
                      child: Image.network(widget.productImage),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: const Text(
                        "Opciones Disponibles",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: kTextColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.green,
                              ),
                              Radio(
                                value: singinCharacter.fill,
                                groupValue: _character,
                                activeColor: Colors.green,
                                onChanged: (value) {
                                  setState(() {
                                    _character = value as singinCharacter?;
                                  });
                                },
                              )
                            ],
                          ),
                          Text("\$${widget.productPrice}"),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(
                                  30,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.add,
                                    size: 15, color: kSecondaryColor),
                                Text(
                                  'AGREGAR',
                                  style: TextStyle(color: kTerciaryColor),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Acerca de éste producto",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          bonntonNavigatorBar(
              backgroundColor: kSecondaryColor,
              color: kPrimaryColorWhite,
              iconColor: kPrimaryColorWhite,
              iconData: wishListBool == false
                  ? Icons.favorite_border_outlined
                  : Icons.favorite,
              title: "Agregar al carrito",
              onTap: () {
                setState(() {
                  wishListBool = !wishListBool;
                });
                if (wishListBool == true) {
                  wishListProvider.addWishListData(
                    wishListId: widget.productId,
                    wishListImage: widget.productImage,
                    wishListName: widget.productName,
                    wishListPrice: widget.productPrice,
                    wishListQuantity: 2,
                  );
                } else {
                  wishListProvider.deleteWishtList(widget.productId);
                }
              }),
          bonntonNavigatorBar(
              backgroundColor: kExtraColor,
              color: kTextColor,
              iconColor: kTextColor,
              iconData: Icons.shopping_cart_outlined,
              title: "Ir al carrito",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ReviewCart()),
                );
              })
        ],
      ),
    );
  }
}
