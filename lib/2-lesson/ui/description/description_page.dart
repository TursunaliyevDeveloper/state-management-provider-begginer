import 'package:flutter/material.dart';
import '../../data/models/product_model.dart';

class DescriptionPage extends StatelessWidget {
  final ProductModel descrip;
  const DescriptionPage({required this.descrip, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Description Page")),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 48),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Column(
          children: [
            Image.network(descrip.image, height: 120),
            SizedBox(height: 40),
            Text(descrip.title, softWrap: true, style: TextStyle(fontSize: 18)),
            SizedBox(height: 40),
            Text(descrip.description, style: TextStyle(fontSize: 14)),
            SizedBox(height: 40),
            Text(
              "${descrip.price.toString()} \$",
              style: TextStyle(color: Colors.green, fontSize: 22),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () async {
                await Future.delayed(const Duration(seconds: 3));
                Navigator.pop(context);
              },
              child: Container(
                height: 60,
                width: MediaQuery.sizeOf(context).width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "Buy",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
