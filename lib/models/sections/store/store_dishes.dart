import 'package:appcomida/models/dish.dart';
import 'package:appcomida/widgets/custom_dish.dart';
import 'package:flutter/material.dart';

class StoreDishes extends StatelessWidget {
  const StoreDishes({super.key});

  @override
  Widget build(BuildContext context) {

    List<Dish> dishes = ListOfDishes();

    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: GridView.builder(
          shrinkWrap: true, //descripcion
          physics: const NeverScrollableScrollPhysics(), //descripcion
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 230,
              crossAxisCount: 2, mainAxisSpacing: 23, crossAxisSpacing: 24
          ),
          itemCount: dishes.length,
          itemBuilder: (context, index){
            return  CustomDish(dishes[index]);
          }
      ),
    );
  }
}
