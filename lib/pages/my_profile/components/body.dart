import 'package:devyapp/pages/home/components/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../../../widgets/coustom_bottom_nav_bar.dart';
import 'list_tile.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override


  Widget build(BuildContext context) {
    /* Tal vez deberia ser solo stack */
    return ListView(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  color: kTerciaryColor,
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 185,
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: const BoxDecoration(
                      color: kPrimaryColorWhite,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 250,
                            height: 80,
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Brenda Shairi",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("pinedabrenda602@gmail.com")
                                  ],
                                ),
                                const Icon(Icons.edit),
                              ],
                            ),
                          ),
                        ],
                      ),
                      listTile(
                        icon: Icons.shop_outlined,
                        title: "Mis Ordenes"
                      ),
                      listTile(
                        icon: Icons.location_on_outlined,
                        title: "Mis Direcciones de Envio"
                      ),
                      listTile(
                        icon: Icons.person_add_alt,
                        title: "Invitar a Amigos"
                      ),
                      listTile(
                        icon: Icons.file_copy_outlined,
                        title: "Terminos y Condiciones"
                      ),
                      listTile(
                        icon: Icons.policy_outlined,
                        title: "Politicas de Privacidad"
                      ),
                      listTile(
                        icon: Icons.addchart,
                        title: "About"
                      ),
                      listTile(
                        icon: Icons.exit_to_app_outlined,
                        title: "Cerrar Sesión"
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 30),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: kTerciaryColor,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/a-/AOh14GjwxJreREoHPUmEKtCvh0M28B06EDtrX8c1n07X=s96-c',
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
