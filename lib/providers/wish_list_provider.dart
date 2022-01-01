import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devyapp/models/product_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class WishListProvider with ChangeNotifier {
  addWishListData({
    required String wishListId,
    required String wishListName,
    required var wishListPrice,
    required String wishListImage,
    required int wishListQuantity,
  }) {
    FirebaseFirestore.instance
        .collection("WishList")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("YourWishList")
        .doc(wishListId)
        .set({
      "wishListId": wishListId,
      "wishListName": wishListName,
      "wishListImage": wishListImage,
      "wishListPrice": wishListPrice,
      "wishListQuantity": wishListQuantity,
      "wishList": true,
    });
  }

  /* Get wishlist data */
  List<ProductModel> wishList = [];

  getWishListData() async {
    List<ProductModel> newList = [];
    QuerySnapshot values = await FirebaseFirestore.instance
        .collection("WishList")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("YourWishList")
        .get();
    values.docs.forEach((element) {
      ProductModel productModel = ProductModel(
        productId: element.get("wishListId"),
        productImage: element.get("wishListImage"),
        productName: element.get("wishListName"),
        /* productNormalPrice: element.get("wishListId"), */
        productPrice: element.get("wishListPrice"),
        productQuantity: element.get("wishListQuantity"),
      );
      newList.add(productModel);
    });
    wishList = newList;
    notifyListeners();
  }

  List<ProductModel> get getWishList {
    return wishList;
  }

  deleteWishtList(wishListId){
    FirebaseFirestore.instance
          .collection("WishList")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection("YourWishList").doc(wishListId).delete();
  }

}
