import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanegement/provider/counter_view_model.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sen shuncha marta FABni bosding"),
            Text(
              "${context.watch<CounterViewModel>().count}",
              style: TextStyle(fontSize: 28),
            ),
            IconButton(
              onPressed: () {
                context.read<CounterViewModel>().decrement();
              },
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterViewModel>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
