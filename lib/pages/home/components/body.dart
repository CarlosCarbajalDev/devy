import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Deberia ir mi homescreen'),
      ),
    );
  }
}