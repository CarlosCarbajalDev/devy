import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devyapp/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  ProductModel? productModel;

  List<ProductModel> search = [];

  productModels(QueryDocumentSnapshot element) {
    productModel = ProductModel(
      productImage: element.get("productImage"),
      productName: element.get("productName"),
      productPrice: element.get("productPrice"),
      productNormalPrice: element.get("productNormalPrice"),
    );

    search.add(productModel!);
  }

  /* CASES */
  List<ProductModel> caseProduct = [];

  getCasesProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot data =
        await FirebaseFirestore.instance.collection("CasesProduct").get();

    data.docs.forEach((element) {
      productModels(element);
      newList.add(productModel!);
      print(element.data());
    });
    caseProduct = newList;
    notifyListeners();
  }

  List<ProductModel> get getCasesProductDataList {
    return caseProduct;
  }

/* FASHION */

  List<ProductModel> fashionProduct = [];

  getFashionProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot data =
        await FirebaseFirestore.instance.collection("Fashion").get();

    data.docs.forEach((element) {
      productModels(element);
      newList.add(productModel!);
      print(element.data());
    });
    fashionProduct = newList;
    notifyListeners();
  }

  List<ProductModel> get getFashionProductDataList {
    return fashionProduct;
  }

/* HOME */

  List<ProductModel> homeProduct = [];

  getHomeProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot data = await FirebaseFirestore.instance
        .collection("HomeandkitchenProduct")
        .get();

    data.docs.forEach((element) {
      productModels(element);
      newList.add(productModel!);
      print(element.data());
    });
    homeProduct = newList;
    notifyListeners();
  }

  List<ProductModel> get getHomeProductDataList {
    return homeProduct;
  }


  List<ProductModel> get gerAllProductSearch {
    return search;
  }
}
