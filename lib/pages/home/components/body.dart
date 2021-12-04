import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../../../widgets/coustom_bottom_nav_bar.dart';
import 'single_product.dart';



class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const navigatorIcons = [
          /* btnBusqueda */
          CircleAvatar(
              radius: 17,
              backgroundColor: kPrimaryColorWhite,
              child: Icon(Icons.search, color: kTerciaryColor),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: kPrimaryColorWhite,
              child: Icon(Icons.shop, color: kTerciaryColor,),
            ),
          ) 
        ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff221851),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Inicio',
          style: TextStyle(
            fontSize: 17
          ),
        ),
        actions: navigatorIcons,
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /* hero */
              Container(
                height: 150,
                decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/background_cases.jpg.png',),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15)
              ),
                child: 
                Row(
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
                                child: Image.asset('assets/logos/circle_logo_blue.png'),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)
                                  )
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
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
                                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
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
                    Expanded(
                      child: Container(
                        
                      )
                    ),
                  ],
                ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Fundas'),
                    Text('Ver todas', style: TextStyle(color: kTextColorP),),
                  ],),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Pulseras'),
                    Text('Ver todas', style: TextStyle(color: kTextColorP),),
                  ],),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

}

