import 'package:flutter/material.dart';

import '../constants.dart';

class Count extends StatefulWidget {
  Count({Key? key}) : super(key: key);

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int count = 1;
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {



    /* Container(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Icon(Icons.remove, size: 18, color: kTextColorP),
          /* Remove */
          SizedBox(
            width: 10,
          ),
          Text(
            '1',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.add, size: 18, color: kTextColorP), /* ADD */
        ],
      ),
    ); */



    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: isTrue == true
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (count == 1) {
                      setState(() {
                        isTrue = false;
                      });
                    } else if (count > 1) {
                      setState(() {
                        count--;
                      });
                    }
                  },
                  child: const Icon(
                    Icons.remove,
                    size: 25,
                    color: kTerciaryColor,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "$count",
                  style: const TextStyle(
                    fontSize: 20,
                    color: kTerciaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: const Icon(
                    Icons.add,
                    size: 25,
                    color: kTerciaryColor,
                  ),
                ),
              ],
            )
          : Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isTrue = true;
                  });
                },
                child: const Text(
                  "Agregar al carrito",
                  style: TextStyle(color: kTextColorP),
                ),
              ),
            ),
    );
  }
}
