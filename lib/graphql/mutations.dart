final String createFurnitureMutation = """
mutation CreateFurniture(\$name: String!, \$type: FurnitureType!, \$price: Float!, \$description: String) {
  createFurniture(name: \$name, type: \$type, price: \$price, description: \$description) {
    id
  }
}
""";
