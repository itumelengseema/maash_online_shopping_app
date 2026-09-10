class Product {
  final int id;
  final String title;
  final String category;
  final double price;
  final String imageUrl;
  final double rating;
  final int ratingCount;
  final String description;

  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.ratingCount,
    required this.description,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    final ratingMap = map['rating'] as Map<String, dynamic>?;

    return Product(
      id: map['id'] as int,
      title: map['title'] as String,
      price: (map['price'] as num).toDouble(),
      description: map['description'] as String,
      category: map['category'] as String,
      imageUrl: map['image'] as String,
      rating: (ratingMap?['rate'] as num?)?.toDouble() ?? 0.0,
      ratingCount: ratingMap?['count'] as int? ?? 0,
    );
  }
}
