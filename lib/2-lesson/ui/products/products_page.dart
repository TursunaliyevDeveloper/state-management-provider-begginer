import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanegement/2-lesson/ui/widgets/product_item.dart';
import 'package:provider_statemanegement/2-lesson/view_model/products_view_model.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products Page")),
      body: Consumer<ProductsViewModel>(
        builder: (context, myProvider, child) {
          if (myProvider.products.isNotEmpty) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: myProvider.products.length,
              itemBuilder: (context, index) => 
              ProductItem(product: myProvider.products[index]),
            );
          }
          if (myProvider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.read<ProductsViewModel>().getAllProducts();
            });
            return const Center(child: Text("No Internet Connection"));
          }
        },
      ),
    );
  }
}
