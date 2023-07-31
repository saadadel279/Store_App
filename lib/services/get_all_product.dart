import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class AllProductServices {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> Data =
        await Api().get(Url: 'https://fakestoreapi.com/products');

    List<ProductModel> productList = [];
    for (int i = 0; i < Data.length; i++) {
      productList.add(ProductModel.fromjson(Data[i]));
    }
    return productList;
  }
}
