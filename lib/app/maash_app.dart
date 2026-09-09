import 'package:flutter/material.dart';

class MaashApp extends StatelessWidget {
  const MaashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maash',
      home: Scaffold(body: Center(child: Text("Maash"))),
    );
  }
}
