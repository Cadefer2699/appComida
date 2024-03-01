
import 'package:appcomida/models/sections/store/hero.dart';
import 'package:appcomida/models/sections/store/options.dart';
import 'package:appcomida/models/sections/store/store_dishes.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> options1 = ["Desayuno", "Almuerzo", "Merienda", "Cena", "Medio día"];
    List<String> options2 = ["Comida Rápida", "Entradas", "Menú", "Postre", "Bebidas", "Snack"];

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          onPressed: (){},
          backgroundColor: const Color(0xFFFF4317),
          child: Stack(
            children: [
              SizedBox(
                height: 35,
                  width: 35,
                  child: Icon(Icons.shopping_cart, color: Colors.white,)),
              Positioned(
                  top: 1,
                  right: 1,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: Text(
                        "4",
                      style: TextStyle(fontSize: 12, color: Color(0xFFFF4317) ),
                    ),
                    )
              )
            ],
          ),
        ),
      ),
        //backgroundColor: const Color(0xFFFFCFC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomHero(),
            const SizedBox(height: 23),
            Options(options: options1),
            const SizedBox(height: 16),
            Options(options: options2),
            const StoreDishes(),
          ],
        ),
      )
    );
  }
}
