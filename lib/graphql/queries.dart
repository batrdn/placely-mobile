final String getFurnitureQuery = """
{
  listAllByPublishStatus(isPublished: true) {
    id,
    name,
    type,
    price,
    description,
    image,
    models
  }
}
""";
