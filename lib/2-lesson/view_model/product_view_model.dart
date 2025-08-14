import 'package:flutter/material.dart';
import 'package:provider_statemanegement/2-lesson/data/models/product_model.dart';
import '../service/api_service/api_service.dart';

class ProductViewModel extends ChangeNotifier {
  ProductModel? products;
  bool isLoading = false;
  void getSingleProduct() async {
    changeLoadingState();
    products = await ApiService().getAllProducts();
    changeLoadingState();
  }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
