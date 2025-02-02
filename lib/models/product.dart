class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String sellerId;
  final String imageUrl;
  final DateTime createdAt;
  final ProductStatus status;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.sellerId,
    required this.imageUrl,
    required this.createdAt,
    this.status = ProductStatus.available,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      sellerId: json['sellerId'],
      imageUrl: json['imageUrl'],
      createdAt: DateTime.parse(json['createdAt']),
      status: ProductStatus.values[json['status']],
    );
  }
}

enum ProductStatus { available, reserved, sold } 