import 'package:flutter/material.dart';

import '../../../constants.dart';

class DrawerApp extends StatelessWidget {
  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
        color: kPrimaryColorWhite,
      ),
      title: Text(
        title,
        style: const TextStyle(color: kPrimaryColorWhite),
      ),
    );
  }

  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kTerciaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    radius: 43,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome Carlos',
                        style: TextStyle(color: kPrimaryColorWhite),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: const BorderSide(
                                width: 2, color: kPrimaryColorWhite),
                          ),
                          onPressed: () {},
                          child: const Text('Cerrar Sesión'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            listTile(icon: Icons.home_outlined, title: "Inicio"),
            listTile(
                icon: Icons.shopping_cart_outlined,
                title: "Carrito de Compras"),
            listTile(icon: Icons.person_outlined, title: "Mi perfil"),
            listTile(
                icon: Icons.notifications_outlined, title: "Notificaciones"),
            listTile(
                icon: Icons.star_outline, title: "Calificaciones y Reseñas"),
            listTile(icon: Icons.favorite_outline, title: "Lista de Deseos"),
            listTile(icon: Icons.copy_outlined, title: "Quejas"),
            listTile(
                icon: Icons.format_quote_outlined,
                title: "Preguntas Frecuentes"),
            const SizedBox(height: 50),
            DefaultTextStyle(
              style: const TextStyle(color: kPrimaryColorWhite),
              child: Container(
                padding: const EdgeInsets.only(right: 15),
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Contactar al soporte"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Llamanos: "),
                        Text("(733) 2132-736")
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Correo: "),
                        SizedBox(width: 5),
                        Text("devy@outlook.com")
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
