class Furniture {
  final price;
  final String id, title, description, image;
  final List<String> models;

  Furniture(
      {this.id,
      this.price,
      this.title,
      this.description,
      this.image,
      this.models});
}

class CreateFurnitureModel {}
