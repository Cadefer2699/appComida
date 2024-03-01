
import 'package:flutter/material.dart';

class CustomHero extends StatelessWidget {
  const CustomHero({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.45,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, //significado....
                image: AssetImage("assets/images/hero.jpg")
            )
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 52, left: 16, right: 16, bottom: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.white),
                  Row(children: [
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 16),
                    Icon(Icons.heart_broken_rounded, color: Colors.white)
                  ],)
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("La Vida Cousiness",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700,
                              color: Colors.white
                          )
                      ),
                      Row(
                        children: [
                          Text("Home Cook", style: TextStyle(
                              fontSize: 12, color: Colors.white
                          )
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.white,
                          ),
                          Text("Fast food", style: TextStyle(
                              fontSize: 12, color: Colors.white
                          )
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.white,
                          ),
                          Text("Chinese", style: TextStyle(
                              fontSize: 12, color: Colors.white
                          )
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.white,
                          ),
                          Text("Italin", style: TextStyle(
                              fontSize: 12, color: Colors.white
                          )
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.white,
                          ),
                          Text("Wines", style: TextStyle(
                              fontSize: 12, color: Colors.white
                          )
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.white,
                          ),
                        ],

                      ),
                    ],
                  ),
                  const Spacer(), //propiedad...
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Row(children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        weight: 16,
                      ),
                      SizedBox(width: 2),
                      Text("4.6")
                    ],),
                  )
                ],
              )
            ],
          ),
        ),

      );
  }
}
