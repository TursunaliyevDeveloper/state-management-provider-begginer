import 'package:dio/dio.dart';
import 'package:provider_statemanegement/2-lesson/data/models/product_model.dart';

class ApiService {
  Future getAllProducts() async {
    Dio dio = Dio();
    Response response = await dio.get("https://fakestoreapi.com/products");
    if (response.statusCode == 200) {
      List<ProductModel> products = (response.data as List)
          .map((e) => ProductModel.fromJson(e))
          .toList();
      return products;
    }
  }

  Future getSingleProduct(int id) async {
    Dio dio = Dio();
    Response response = await dio.get("https://fakestoreapi.com/products");
    if (response.statusCode == 200) {
      List<ProductModel> products = (response.data as List)
          .map((e) => ProductModel.fromJson(e))
          .toList();
      return products;
    }
  }
}
