
class Dish {
  String name;
  String store;
  int proximity;
  String image;
  double stars;
  int price;

  Dish({
    required this.name,
    required this.store,
    required this.proximity,
    required this.image,
    required this.stars,
    required this.price
  });
}

List<Dish> ListOfDishes() {
  return [
    Dish(
        name: "Arroz Chaufa",
        store: "Chiness Su'Cafe",
        proximity: 30,
        image: "arrozchaufa.png",
        stars: 4.6,
        price: 25
    ),
    Dish(
        name: "Gaseosa Coca Cola",
        store: "Bebida",
        proximity: 30,
        image: "cocacola.png",
        stars: 4.6,
        price: 10
    ),
    Dish(
        name: "Hamburguesa",
        store: "Comida",
        proximity: 30,
        image: "hamburguesa.jpg",
        stars: 4.6,
        price: 20
    ),
    Dish(
        name: "Pollo a la Brasa",
        store: "Comida",
        proximity: 30,
        image: "polloalabrasa.png",
        stars: 4.6,
        price: 25
    ),
    Dish(
        name: "Papa Fritas",
        store: "Comida",
        proximity: 30,
        image: "papafritas.png",
        stars: 4.6,
        price: 15
    ),
    Dish(
        name: "Lomo Saltado",
        store: "Comida",
        proximity: 30,
        image: "lomosaltado.jpg",
        stars: 4.6,
        price: 25
    ),

  ];
}