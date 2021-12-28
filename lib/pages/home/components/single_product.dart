/* singal_product */
//Probablemnente necesitara un ajusted despues
import 'package:devyapp/widgets/counter.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SingalProducts extends StatelessWidget {
  final String productImage;
  final String productName;
  final int productPrice;
  final int productNormalPrice;
  final String productId;
  final Function() onTap;

  SingalProducts(
      {required this.productImage,
      required this.productName,
      required this.onTap,
      required this.productPrice,
      required this.productNormalPrice,
      required this.productId});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 270,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 150,
                  padding: const EdgeInsets.all(5),
                  width: double.infinity,
                  child: Image.network(productImage),
                ),
              ),
              /* 
                Era hijo de Children [],
                Expanded(
                  flex: 2,
                  child: Image.network(productImage),
                ), */
              Expanded(
                  child: Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$$productNormalPrice ',
                              style: const TextStyle(
                                fontSize: 14,
                                color: kTextColorP,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            Text(
                              '\$$productPrice MXN',
                              style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Count(
                              productID: productId ,
                              productImage: productImage,
                              productName: productName,
                              productPrice: productPrice,
                            ),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ],
    );
  }
}
