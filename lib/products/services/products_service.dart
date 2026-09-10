import 'package:maash_online_shopping_app/network/api_result.dart';
import 'package:maash_online_shopping_app/network/app_http_client.dart';

class ProductsService {
  final AppHttpClient httpClient;

  ProductsService({AppHttpClient? httpClient})
    : httpClient = httpClient ?? AppHttpClient();

  Future<ApiResult<dynamic>> getProducts() async {
    return httpClient.get('https://fakestoreapi.com/products');
  }
}
