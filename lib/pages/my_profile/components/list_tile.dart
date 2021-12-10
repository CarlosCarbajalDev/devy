import 'package:flutter/material.dart';

Widget listTile({
    required IconData icon,
    required String title,
  }) {
    return Column(
      children: [
        const Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }