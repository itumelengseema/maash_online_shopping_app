import 'package:maash_online_shopping_app/products/models/product_size_model.dart';

class ProductVariantModel {
  final int id;
  final ProductSize size;
  final String? colour;
  final int stockQuantity;

  ProductVariantModel({
    required this.id,
    required this.size,
    required this.colour,
    required this.stockQuantity,
  });
}
