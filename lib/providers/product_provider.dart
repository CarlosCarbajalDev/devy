import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devyapp/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  ProductModel? productModel;
  List<ProductModel> caseProduct = [];

  getProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot data =
        await FirebaseFirestore.instance.collection("CasesProduct").get();

    data.docs.forEach((element) {
      productModel = ProductModel(
        productImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice"),
      );
      newList.add(productModel!);
      print(element.data());
    });
    caseProduct = newList;
    notifyListeners();
  }

  List<ProductModel>get getProductDataList {
    return caseProduct;
  }
}
