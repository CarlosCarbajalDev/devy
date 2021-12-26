import 'package:devyapp/pages/home/components/body_home.dart';
import 'package:devyapp/pages/home/components/drawer.dart';
import 'package:devyapp/pages/product_overview/product_overview.dart';
import 'package:devyapp/pages/search/search.dart';
import 'package:devyapp/providers/product_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../../../widgets/coustom_bottom_nav_bar.dart';
import 'single_product.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late ProductProvider productProvider;


  /* Widgets start */

  Widget _buildCasesProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Fundas'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Search(
                        search: productProvider.getCasesProductDataList,
                        
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Ver todas',
                  style: TextStyle(color: kTextColorP),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children:
                    productProvider.getCasesProductDataList.map((caseProductData) {
                      return SingalProducts(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductOverview(
                                    productImage:
                                        caseProductData.productImage!,
                                    productName: caseProductData.productName!,
                                    productPrice: caseProductData.productPrice,
                                  )));
                        },
                        productImage: caseProductData.productImage!,
                        productName: caseProductData.productName!,
                        productPrice: caseProductData.productPrice,
                        productNormalPrice: caseProductData.productNormalPrice,
                      );
                    }).toList()
                /* children: [
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage:
                                "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                            productName: "Funda Iphone 12",
                          )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Calcetassssaaa",
              ),
              
            ], */
                )),
      ],
    );
  }


  Widget _buildAccesoriesProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Ropa'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Search(
                        search: productProvider.getFashionProductDataList,
                        
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Ver todas',
                  style: TextStyle(color: kTextColorP),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children:
                    productProvider. getFashionProductDataList.map((fashionProductData) {
                      return SingalProducts(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductOverview(
                                    productImage:
                                        fashionProductData.productImage!,
                                    productName: fashionProductData.productName!,
                                    productPrice: fashionProductData.productPrice,
                                  )));
                        },
                        productImage: fashionProductData.productImage!,
                        productName: fashionProductData.productName!,
                        productPrice: fashionProductData.productPrice,
                        productNormalPrice: fashionProductData.productNormalPrice,
                      );
                    }).toList()
                /* children: [
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage:
                                "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                            productName: "Funda Iphone 12",
                          )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Calcetassssaaa",
              ),
              
            ], */
                )),
      ],
    );
  }


  Widget _buildHomeProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Hogar y Limpieza'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Search(
                        search: productProvider.getFashionProductDataList,
                        
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Ver todas',
                  style: TextStyle(color: kTextColorP),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children:
                    productProvider. getHomeProductDataList.map((homeProductData) {
                      return SingalProducts(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductOverview(
                                    productImage:
                                        homeProductData.productImage!,
                                    productName: homeProductData.productName!,
                                    productPrice: homeProductData.productPrice,
                                  )));
                        },
                        productImage: homeProductData.productImage!,
                        productName: homeProductData.productName!,
                        productPrice: homeProductData.productPrice,
                        productNormalPrice: homeProductData.productNormalPrice,
                      );
                    }).toList()
                /* children: [
              SingalProducts(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage:
                                "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                            productName: "Funda Iphone 12",
                          )));
                },
                productImage:
                    "http://cdn.tmobile.com/content/dam/t-mobile/en-p/accessories/194252168936/194252168936-frontimage.png",
                productName: "Calcetassssaaa",
              ),
              
            ], */
                )),
      ],
    );
  }
  /* Widgets end */




  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.getCasesProductData();
    productProvider.getFashionProductData();
    productProvider.getHomeProductData();
    super.initState();
  }
  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
        color: kPrimaryColorWhite,
      ),
      title: Text(
        title,
        style: const TextStyle(color: kPrimaryColorWhite),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);



    /* Barra de iconos */
    var navigatorIcons = [
      /* btnBusqueda */
      CircleAvatar(
        radius: 17,
        backgroundColor: kPrimaryColorWhite,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Search(
                    search: productProvider.gerAllProductSearch,
                  ),
                ));
              },
              icon: const Icon(Icons.search, color: kTerciaryColor)),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CircleAvatar(
          radius: 17,
          backgroundColor: kPrimaryColorWhite,
          child: Icon(
            Icons.shop,
            color: kTerciaryColor,
          ),
        ),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff221851),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Inicio',
          style: TextStyle(fontSize: 17),
        ),
        actions: navigatorIcons,
      ),
      drawer: const DrawerApp(),
      body: Padding(
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

            _buildHomeProduct(context),
            //Termina 2 row
          ]),
        ),
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
