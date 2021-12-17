import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home/components/drawer.dart';
import 'components/body.dart';




class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTerciaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Buscar productos'),
      ),

      body: const Body(),
    );
  }
}
