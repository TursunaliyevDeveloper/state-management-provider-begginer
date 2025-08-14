import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanegement/1-lesson/provider/counter_view_model.dart';
import 'package:provider_statemanegement/2-lesson/ui/products/products_page.dart';
import 'package:provider_statemanegement/2-lesson/view_model/products_view_model.dart';

void main() async {
  // ignore: unused_local_variable
  final dio = Dio();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterViewModel()),
        ChangeNotifierProvider(create: (_) => ProductsViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ProductsPage(),
    );
  }
}
