import 'package:devyapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

enum singinCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final String productName;
  final String productImage;
  

  static String routeName = "/product_overview";
  ProductOverview({Key? key, required this.productName, required this.productImage}) : super(key: key);

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
    Function? onTap,
  }) {
    return Expanded(
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
    );
  }

  @override
  Widget build(BuildContext context) {
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
                      subtitle: const Text("\$80.00"),
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
                          const Text("\$50.00"),
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
                    "Acerca de ??ste producto",
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
              iconData: Icons.favorite_border_outlined,
              title: "Agregar al carrito"),
          bonntonNavigatorBar(
              backgroundColor: kExtraColor,
              color: kTextColor,
              iconColor: kTextColor,
              iconData: Icons.shopping_cart_outlined,
              title: "Ir al carrito")
        ],
      ),
    );
  }
}
