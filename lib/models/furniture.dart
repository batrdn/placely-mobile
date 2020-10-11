class Furniture {
  final int id, price;
  final String title, description, image;

  Furniture({this.id, this.price, this.title, this.description, this.image});
}

// list of products
// for our demo
List<Furniture> furniture = [
  Furniture(
    id: 1,
    price: 500000,
    title: "Сандал X",
    image: "assets/images/Item_1.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Furniture(
    id: 4,
    price: 300000,
    title: "Сандал Y",
    image: "assets/images/Item_2.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Furniture(
    id: 9,
    price: 250000,
    title: "Сандал Z",
    image: "assets/images/Item_3.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
