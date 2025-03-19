import 'package:donut_app_2c_gaxiola/tabs/burger_tab.dart';
import 'package:donut_app_2c_gaxiola/tabs/donut_tab.dart';
import 'package:donut_app_2c_gaxiola/tabs/pancakes_tab.dart';
import 'package:donut_app_2c_gaxiola/tabs/pizza_tab.dart';
import 'package:donut_app_2c_gaxiola/tabs/smoothie_tab.dart';
import 'package:donut_app_2c_gaxiola/utils/my_tab.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(iconPath: "lib/icons/donut.png"),
    const MyTab(iconPath: "lib/icons/burger.png"),
    const MyTab(iconPath: "lib/icons/smoothie.png"),
    const MyTab(iconPath: "lib/icons/pancakes.png"),
    const MyTab(iconPath: "lib/icons/pizza.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            // Texto Principal
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 32)),
                  Text(
                    "Eat",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // Pestañas (TabBar)
            TabBar(tabs: myTabs),

            // Contenido de pestañas (TabBarView)
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancakesTab(),
                  PizzaTab(),
                ],
              ),
            ),

            // Carrito (Cart)
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Información de los items y entrega
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2 Items | \$45",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Delivery Charges Included"),
                    ],
                  ),
                  // Botón mejorado para ver el carrito con icono y texto
                  ElevatedButton(
                    onPressed: () {
                      // Acción del botón
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, // Color personalizado
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'View Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
