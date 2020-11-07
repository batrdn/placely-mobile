class Furniture {
  final price;
  final String id, title, description, image;

  static List<Furniture> dummy = [
    Furniture(
        price: 500000,
        id: '1',
        title: 'X',
        image: 'assets/images/chair.png',
        description: 'X'),
    Furniture(price: 600000,
        id: '2',
        title: 'Y',
        image: 'assets/images/chair.png',
        description: 'Y'),
    Furniture(price: 700000,
        id: '3',
        title: 'Z',
        image: 'assets/images/chair.png',
        description: 'Z')
  ];

  Furniture({this.id, this.price, this.title, this.description, this.image});
}

class CreateFurnitureModel {}
