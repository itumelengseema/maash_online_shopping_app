import 'package:flutter/material.dart';
import 'package:maash_online_shopping_app/products/view_models/products_view_model.dart';
import 'package:maash_online_shopping_app/products/views/products_page.dart';
import 'package:maash_online_shopping_app/theme/app_theme.dart';
import 'package:provider/provider.dart';

class MaashApp extends StatelessWidget {
  const MaashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maash',
      theme: AppTheme.lightTheme,
      home: ChangeNotifierProvider(
        create: (_) => ProductsViewModel()..loadProducts(),
        child: ProductsPage(),
      ),
    );
  }
}
