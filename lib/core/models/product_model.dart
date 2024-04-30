class ProductModel {
  final String ownerid;
  final String name;
  final double price;
  final String category;
  final String image;
  final String description;
  final String id;
  ProductModel(
      {required this.id,
      required this.ownerid,
      required this.description,
      required this.category,
      required this.image,
      required this.price,
      required this.name});

  factory ProductModel.fromjason(jsonData) {
    return ProductModel(
        description: jsonData['description'],
        category: jsonData['category'],
        image: jsonData['image'],
        price: jsonData['price'],
        id: jsonData['id'],
        name: jsonData['name'],
        ownerid: jsonData['ownerid']);
  }
}
