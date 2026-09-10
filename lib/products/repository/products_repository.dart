
import 'package:maash_online_shopping_app/network/api_result.dart';
import 'package:maash_online_shopping_app/products/models/product.dart';
import 'package:maash_online_shopping_app/products/services/products_service.dart';

class ProductsRepository {
  final ProductsService productsService;

  ProductsRepository({
    ProductsService? productsService,
  }) : productsService = productsService ?? ProductsService();

  Future<ApiResult<List<Product>>> getProducts() async {
    final result = await productsService.getProducts();

    switch (result) {
      case ApiSuccess():
        try {
          final data = result.data as List<dynamic>;

          final products = data
              .map(
                (item) => Product.fromMap(
                  item as Map<String, dynamic>,
                ),
              )
              .toList();

          return ApiSuccess(products);
        } catch (error) {
          return ApiFailure(
            'Failed to parse products: $error',
          );
        }

      case ApiFailure():
        return ApiFailure(result.message);
    }
  }
}