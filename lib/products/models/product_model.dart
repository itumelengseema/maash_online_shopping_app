import 'package:flutter/foundation.dart';
import 'package:maash_online_shopping_app/products/enums/product_category.dart';
import 'package:maash_online_shopping_app/products/enums/product_department.dart';
import 'package:maash_online_shopping_app/products/enums/product_season.dart';
import 'package:maash_online_shopping_app/products/enums/product_type.dart';
import 'package:maash_online_shopping_app/products/models/brand_model.dart';
import 'package:maash_online_shopping_app/products/models/product_collection.dart';
import 'package:maash_online_shopping_app/products/models/product_variant_model.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final double? salePrice;
  final String imageUrl;
  final double rating;
  final int ratingCount;

  final Brand brand;
  final ProductCategory category;
  final ProductType productType;
  final ProductSeason productSeason;
  final ProductDepartment productDepartment;

  final List<ProductVariantModel> variants;
  final List<ProductCollection> collections;

  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.ratingCount,
    required this.description,
    required this.brand,
    this.salePrice,
    required this.productType,
    required this.productSeason,
    required this.productDepartment,
    required this.variants,
    required this.collections,
  });

  // factory Product.fromMap(Map<String, dynamic> map) {
  //   final ratingMap = map['rating'] as Map<String, dynamic>?;
  //
  //   return Product(
  //     id: map['id'] as int,
  //     title: map['title'] as String,
  //     price: (map['price'] as num).toDouble(),
  //     description: map['description'] as String,
  //     category: map['category'] as String,
  //     imageUrl: map['image'] as String,
  //     rating: (ratingMap?['rate'] as num?)?.toDouble() ?? 0.0,
  //     ratingCount: ratingMap?['count'] as int? ?? 0, brand: brand
  //   );
  // }
}
