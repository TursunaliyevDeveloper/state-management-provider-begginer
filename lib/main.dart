import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanegement/provider/counter_view_model.dart';
import 'package:provider_statemanegement/provider/provider_counter.dart';
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>CounterViewModel())
    ],
    child: const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ProviderCounter(),
    );
  }
}