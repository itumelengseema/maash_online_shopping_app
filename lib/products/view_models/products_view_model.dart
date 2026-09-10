import 'package:flutter/material.dart';
import 'package:maash_online_shopping_app/network/api_result.dart';
import 'package:maash_online_shopping_app/products/repository/products_repository.dart';

import '../models/product.dart';

enum ProductsState { initial, loading, loaded, empty, error }

class ProductsViewModel extends ChangeNotifier {
  final ProductsRepository productsRepository;

  ProductsViewModel({ProductsRepository? productsRepository})
    : productsRepository = productsRepository ?? ProductsRepository();

  ProductsState _state = ProductsState.initial;
  ProductsState get state => _state;

  List<Product> _products = [];
  List<Product> get products => _products;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> loadProducts() async {
    _state = ProductsState.loaded;
    _errorMessage = null;

    notifyListeners();
    
    final result = await productsRepository.getProducts();

    switch(result){
      case ApiSuccess():
        _products = result.data;

        if (_products.isEmpty){
          _state = ProductsState.empty;
        } else{_state = ProductsState.loaded;}

      case ApiFailure():
        _state = ProductsState.error;
        _errorMessage = result.message;
    }

    notifyListeners();
  }
}
