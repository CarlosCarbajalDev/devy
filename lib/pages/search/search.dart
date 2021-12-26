import 'package:devyapp/models/product_model.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home/components/drawer.dart';
import 'components/body.dart';

class Search extends StatelessWidget {
  final List<ProductModel>? search;
  const Search({this.search ,Key? key}) : super(key: key);

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
