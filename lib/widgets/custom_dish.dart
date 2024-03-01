import 'package:appcomida/models/dish.dart';
import 'package:flutter/material.dart';

class CustomDish extends StatelessWidget {
  final Dish dish;
  const CustomDish(
       this.dish,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //Shadow --> detalle
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0,4),
              blurRadius: 20,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16)
          )
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration:  BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover, //descripcion
                  image: AssetImage("assets/images/${dish.image}"),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dish.name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1F2B2E),
                  ),
                ),
                Text(
                  dish.store,
                  style: TextStyle(
                    color: const Color(0xFF999999),
                    fontSize: 12,
                  ),
                ),
                Row(
                  children: [
                     Row(
                      children: [
                        Icon(Icons.lock_clock, color: Colors.red),
                        Text(
                          "${dish.proximity} mins",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF50555C),
                              fontSize: 10
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text(
                          "${dish.stars}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF50555C),
                              fontSize: 10
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  "S\$${dish.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1F2B2E),
                      fontSize: 18
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
