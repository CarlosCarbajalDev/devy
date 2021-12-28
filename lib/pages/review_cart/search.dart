import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home/components/drawer.dart';
import 'components/body.dart';




class ReviewCart extends StatelessWidget {
  const ReviewCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTerciaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Carrito de Compras'),
      ),
      body: Body(),
      bottomNavigationBar: ListTile(
        title: Text("Total"),
        subtitle: Text("\$1700.00"),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: const Text("Pagar"),
            color: kExtraColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            onPressed: () {}
          ),
        ),
      ),
    );
  }
}
