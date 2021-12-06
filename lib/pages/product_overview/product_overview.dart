import 'package:devyapp/constants.dart';
import 'package:flutter/material.dart';

class ProductOverview extends StatefulWidget {
  static String routeName = "/product_overview";
  ProductOverview({Key? key}) : super(key: key);

  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  
  
  
  Widget bonntonNavigatorBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
    Function? onTap,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 20,
              color: iconColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Overview"),
        backgroundColor: const Color(0xff221851),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      /* ME QUEDE EN AGREGAR BODY */
      bottomNavigationBar: Row(
        children: [
          bonntonNavigatorBar(backgroundColor: kSecondaryColor, color: kPrimaryColorWhite, iconColor: kPrimaryColorWhite, iconData: Icons.favorite_border_outlined, title: "Agregar al carrito"),
          bonntonNavigatorBar(backgroundColor: kExtraColor, color: kTextColor, iconColor: kTextColor, iconData: Icons.shopping_cart_outlined, title: "Ir al carrito")
        ],
      ),
    );
  }
}
