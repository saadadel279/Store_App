import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class AddProductServices {
  Future<ProductModel> addProduct (
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async{

        Map<String,dynamic>Data= await Api().post(Url: 'https://fakestoreapi.com/products', body: {
          'title':title,
          'price':price,
          'description':description,
          'image':image,
          'category':category
        },);
        return ProductModel.fromjson(Data);
      }
}
