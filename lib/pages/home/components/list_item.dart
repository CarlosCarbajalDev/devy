import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({required IconData icon, required String title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    return const ListTile(
      leading: Icon(Icons.plus_one),
    );
  }
}