import 'package:flutter/material.dart';
import 'package:donut_app_2c_gaxiola/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // Lista de donas actualizada a 8 elementos
  final List donutsOnSale = [
    [
      "Nuts Caramel",
      "Dunkin's",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Red Velvet",
      "Dunkin's",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    ["Strawberry", "Dunkin's", "84", Colors.pink, "lib/images/grape_donut.png"],
    [
      "Choco Tap",
      "Dunkin's",
      "95",
      Colors.brown,
      "lib/images/chocolate_donut.png"
    ],
    [
      "Vanilla Bliss",
      "Dunkin's",
      "50",
      Colors.yellow,
      "lib/images/icecream_donut.png"
    ],
    [
      "Blueberry Frost",
      "Dunkin's",
      "70",
      Colors.purple,
      "lib/images/icecream_donut.png"
    ],
    [
      "Glazed Original",
      "Dunkin's",
      "40",
      Colors.orange,
      "lib/images/icecream_donut.png"
    ],
    [
      "Cinnamon Delight",
      "Dunkin's",
      "65",
      Colors.deepOrange,
      "lib/images/icecream_donut.png"
    ],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Muestra 2 donas por fila
        childAspectRatio: 1 / 1.5,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutName: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      },
    );
  }
}
