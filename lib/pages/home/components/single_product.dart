import 'package:flutter/material.dart';

import '../../../constants.dart';

class singalProducts extends StatelessWidget {
  const singalProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 250,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.network('https://nudient.centracdn.net/client/dynamic/images/671_4f172010b1-productcard-iphone-13-pro-max-saffron-yellow-full.jpg'),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:  10.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Funda Iphone 12', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('\$120.00 ', 
                          style: TextStyle(
                            fontSize: 14,
                            color: kTextColorP,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text('\$80.00 MX', 
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const[
                                  Icon(Icons.remove, size: 18, color: kTextColorP),
                                  SizedBox(width: 10,),
                                  Text('1', style: TextStyle(fontSize: 18),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.add, size: 18, color: kTextColorP),
                                ],
                              ),
                            ),
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}