import 'package:storeapp/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> Data =
        await Api().get(Url: 'https://fakestoreapi.com/products/categories');

    return Data;
  }
}
