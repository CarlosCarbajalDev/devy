import 'package:devyapp/providers/review_cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class Count extends StatefulWidget {
  String productName;
  String productImage;
  String productID;
  int productPrice;

  Count(
      {required this.productID,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      Key? key})
      : super(key: key);

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int count = 1;
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: isTrue == true
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (count == 1) {
                      setState(() {
                        isTrue = false;
                      });
                    } else if (count > 1) {
                      setState(() {
                        count--;
                      });
                    }
                  },
                  child: const Icon(
                    Icons.remove,
                    size: 25,
                    color: kTerciaryColor,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "$count",
                  style: const TextStyle(
                    fontSize: 20,
                    color: kTerciaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: const Icon(
                    Icons.add,
                    size: 25,
                    color: kTerciaryColor,
                  ),
                ),
              ],
            )
          : Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isTrue = true;
                  });
                  reviewCartProvider.addReviewCartData(
                      cartId: widget.productID,
                      cartImage: widget.productImage,
                      cartName: widget.productName,
                      cartPrice: widget.productPrice,
                      cartQuantity: count);
                },
                child: const Text(
                  "Agregar al carrito",
                  style: TextStyle(color: kTextColorP),
                ),
              ),
            ),
    );
  }
}
