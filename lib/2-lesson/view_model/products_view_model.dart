import 'package:flutter/material.dart';
import 'package:provider_statemanegement/2-lesson/data/models/product_model.dart';
import 'package:provider_statemanegement/2-lesson/service/api_service/api_service.dart';

class ProductsViewModel extends ChangeNotifier {
  List<ProductModel> products = [];
  bool isLoading = false;
  void getAllProducts() async {
    changeLoadingState();
    products = await ApiService().getAllProducts();
    isLoading = false;
    notifyListeners();
    print(products.isNotEmpty);
  }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
