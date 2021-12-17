import 'package:devyapp/pages/home/components/body_home.dart';
import 'package:devyapp/pages/home/components/drawer.dart';
import 'package:devyapp/pages/search/search.dart';
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
                  builder: (context) => const Search(),
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
      body: const BodyHome(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
