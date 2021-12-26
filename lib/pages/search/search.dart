import 'package:devyapp/models/product_model.dart';
import 'package:devyapp/widgets/single_item.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home/components/drawer.dart';
import 'components/body.dart';

enum Character { lowToHigh, highToLow, alphabetically }

class Search extends StatefulWidget {
  final List<ProductModel>? search;
  const Search({this.search, Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
  
}

class _SearchState extends State<Search> {
  Character _character = Character.alphabetically;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTerciaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Buscar productos'),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text("Productos"),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 52,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color(0xfff0f0ef),
                filled: true,
                hintText: "Buscar productos en la tienda",
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: widget.search!.map((data) {
              return SingleItem(
                isBool: false,
                productImage: data.productImage,
                productName: data.productName,
                productPrice: data.productPrice,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
