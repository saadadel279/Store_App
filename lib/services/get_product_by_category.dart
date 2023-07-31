import 'package:storeapp/helper/api.dart';

import '../models/product_model.dart';

class CategoriesProductsServises {
  Future<List<ProductModel>> getCategoriesProduct(
      {required String category_name}) async {
    List<dynamic> Data = await Api()
        .get(Url: 'https://fakestoreapi.com/products/category/$category_name');
    List<ProductModel> productList = [];
    for (int i = 0; i < Data.length; i++) {
      productList.add(ProductModel.fromjson(Data[i]));
    }
    return productList;
  }
}
