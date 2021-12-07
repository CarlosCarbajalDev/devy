import 'package:devyapp/pages/home/components/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../../../widgets/coustom_bottom_nav_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
        color: kPrimaryColorWhite,
      ),
      title: Text(title, style: const TextStyle(color: kPrimaryColorWhite),),
    );
  }

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(child: Text('Mi perfil'),),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
