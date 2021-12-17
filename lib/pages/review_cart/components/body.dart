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
        ),
        SingleItem(
        ),
        SingleItem(
        ),
        SingleItem(
        ),
        SingleItem(
        ),

        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
