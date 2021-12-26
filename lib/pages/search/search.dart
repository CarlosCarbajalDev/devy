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
  String query = "";

  searchItem(String query) {
    List<ProductModel> searchCase = widget.search!.where((element) {
      return element.productName!.toLowerCase().contains(query);
    }).toList();
    return searchCase;
  }

  Character _character = Character.alphabetically;
  @override
  Widget build(BuildContext context) {
    List<ProductModel> _searchItem = searchItem(query);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTerciaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Buscar productos'),
      ),
      body: ListView(
        //probablemente necesitare un modal para enseñar la forma en que deben ser mostrados los items, lowToHigh,etc 18,
        children: [
          const ListTile(
            title: Text("Productos"),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 52,
            child: TextField(
              onChanged: (value) {
                print(value.toLowerCase());
                setState(() {
                  query = value;
                });
              },
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
            children: _searchItem.map((data) {
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
