import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import 'search_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* Tal vez deberia ser solo stack */
    return ListView(
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
        const SearchItem(),
        const SearchItem(),
        const SearchItem(),
      ],
    );
  }
}
