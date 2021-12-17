import 'package:devyapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  bool? isBool = false;
  SingleItem({this.isBool,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 100,
            child: Center(
              child: Image.network(
                  "https://cf.shopee.com.mx/file/16f9b7c5775d7a41b0a597fdcf6c52c3"),
            ),
          )),
          Expanded(
              child: Container(
            height: 100,
            child: Column(
              mainAxisAlignment: isBool==false ? MainAxisAlignment.spaceAround : MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Nombre del  producto",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$50.00 MXN",
                      style: TextStyle(
                          color: kTextColorP, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                isBool==false ? Container(
                  margin: const EdgeInsets.only(right: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "50 Piezas",
                          style: TextStyle(
                            color: kTextColorP,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: kTextColorP,
                        ),
                      )
                    ],
                  ),
                ): const Text("hola")
              ] ,
            ),
          )),
          Expanded(
              child: Container(
                height: 100,
                padding: isBool == false ? const EdgeInsets.symmetric(horizontal: 15, vertical: 32): const EdgeInsets.only(left: 15, right: 15),
                child: isBool == false ? 
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add,
                            color: kPrimaryColor,
                            size: 20,
                          ),
                          Text(
                            "Agregar",
                            style: TextStyle(
                              color: kTextColorP,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.delete, size: 30, color: kTextColorP,),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: kPrimaryColor,
                                  size: 20,
                                ),
                                Text(
                                  "Agregar",
                                  style: TextStyle(
                                    color: kTextColorP,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                ),
              )
          ),
        ],
        
      ),  
    );
  }
}
