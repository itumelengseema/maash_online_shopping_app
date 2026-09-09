import 'package:flutter/material.dart';
import 'package:maash_online_shopping_app/products/views/products_page.dart';
import 'package:maash_online_shopping_app/theme/app_theme.dart';

class MaashApp extends StatelessWidget {
  const MaashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maash',
      theme: AppTheme.lightTheme,
      home: const ProductsPage(),
    );
  }
}
