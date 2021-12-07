import 'package:devyapp/pages/product_overview/product_overview.dart';

import 'single_product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

/* home_screen */
class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  Widget _buildCasesProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Fundas'),
              Text(
                'Ver todas',
                style: TextStyle(color: kTextColorP),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProducts(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                          productName: "Funda Iphone 12",
                        )));
                  },
                  productImage:"http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                  productName: "Calcetassssaaa",
                ),
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                          productName: "Funda Iphone 12",
                        )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Tiness",
              ),
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                          productName: "Funda Iphone 12",
                        )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Calcetas",
              ),
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                          productName: "Funda Iphone 12",
                        )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Calcetas",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAccesoriesProduct(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Pulseras'),
              Text(
                'Ver todas',
                style: TextStyle(color: kTextColorP),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                          productName: "Funda Iphone 12",
                        )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Calcetas",
              ),
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                          productName: "Funda Iphone 12",
                        )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Calcetas",
              ),
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                          productName: "Funda Iphone 12",
                        )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Calcetas",
              ),
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productImage: "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                          productName: "Funda Iphone 12",
                        )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Calcetas",
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(children: [
          /* hero */
          Container(
            height: 150,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/background_cases.jpg.png',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Container(
                            height: 50,
                            width: 100,
                            child: Image.asset(
                                'assets/logos/circle_logo_blue.png'),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30))),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          '15% de descuento',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColorWhite,
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 5),
                            child: Text(
                              'En todas las fundas',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: kPrimaryColorWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ), //Termina hero

          //Cases scroll left to right
          _buildCasesProduct(context),

          //Accesorios scroll left to right
          _buildAccesoriesProduct(context),
          //Termina 2 row
        ]),
      ),
    );
  }
}
