import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home/components/drawer.dart';
import 'components/body.dart';




class MyProfile extends StatelessWidget {
  static String routeName = "/my_profile";

  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTerciaryColor,
        title: const Text('Mi Perfil'),
      ),
      drawer: const DrawerApp(),
      body: const Body(),
    );
  }
}
