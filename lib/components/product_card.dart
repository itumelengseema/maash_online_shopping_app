import 'package:flutter/material.dart';
import 'package:maash_online_shopping_app/products/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onFavouriteTap;

  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.onFavouriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
