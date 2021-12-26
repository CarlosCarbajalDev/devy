import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../widgets/single_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* Tal vez deberia ser solo stack */
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        SingleItem(
          productImage: "https://res.cloudinary.com/ds2uueuk2/image/upload/v1639731631/WhatsApp_Image_2021-11-21_at_5.02.32_PM_37_rcssdo.jpg",
          productName: "Funda forma manchas",
          productNormalPrice: 100,
          productPrice: 80,
        ),
        

        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
