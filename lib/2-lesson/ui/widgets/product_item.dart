import 'package:flutter/material.dart';
import 'package:provider_statemanegement/2-lesson/data/models/product_model.dart';
import 'package:provider_statemanegement/2-lesson/ui/description/description_page.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DescriptionPage()),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(product.title),
          subtitle: Image.network(product.image, height: 60),
        ),
      ),
    );
  }
}
