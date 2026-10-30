class Product {
  final String image;
  final String name;
  final num? price;
  final String? unit;
  final String description;

  Product({
    required this.image,
    required this.name,
    this.price,
    this.unit,
    required this.description,
  });
}
