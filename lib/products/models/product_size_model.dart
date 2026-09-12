import 'package:maash_online_shopping_app/products/enums/product_size_system.dart';
import 'package:maash_online_shopping_app/products/enums/product_size_type.dart';

class ProductSize {
  final String value;
  final ProductSizeSystem system;
  final ProductSizeType type;

  ProductSize({required this.value, required this.system, required this.type});
}
