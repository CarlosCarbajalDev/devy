import 'package:devyapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  bool? isBool = false;
  String? productImage;
  String? productName;
  int? productPrice;
  int? productNormalPrice;
  String? productId;
  int? productQuantity;
  VoidCallback? onDelete;
  SingleItem(
      {this.productImage,
      this.productName,
      this.productNormalPrice,
      this.productPrice,
      this.isBool,
      this.productId,
      this.productQuantity,
      this.onDelete,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 100,
            child: Center(
              child: Image.network(productImage!),
            ),
          )),
          Expanded(
              child: Container(
            height: 100,
            child: Column(
              mainAxisAlignment: isBool == false
                  ? MainAxisAlignment.spaceAround
                  : MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$$productPrice MXN",
                      style: const TextStyle(
                          color: kTextColorP, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                isBool == false
                    ? Container(
                        margin: const EdgeInsets.only(right: 15),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text(
                                "50 Piezas",
                                style: TextStyle(
                                  color: kTextColorP,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: kTextColorP,
                              ),
                            )
                          ],
                        ),
                      )
                    : const Text("Iguala")
              ],
            ),
          )),
          Expanded(
              child: Container(
            height: 100,
            padding: isBool == false
                ? const EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                : const EdgeInsets.only(left: 15, right: 15),
            child: isBool == false
                ? Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add,
                            color: kPrimaryColor,
                            size: 20,
                          ),
                          Text(
                            "Agregar",
                            style: TextStyle(
                              color: kTextColorP,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: onDelete,
                        child: const Icon(
                          Icons.delete,
                          size: 30,
                          color: kTextColorP,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.remove,
                                color: kPrimaryColor,
                                size: 25,
                              ),
                              SizedBox(width: 8,),
                              Text(
                                "1",
                                style: TextStyle(
                                  color: kTextColorP,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 8,),
                              Icon(
                                Icons.add,
                                color: kPrimaryColor,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
          )),
        ],
      ),
    );
  }
}
