import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class UpdateProductServices {
  Future<ProductModel> updateProduct (
      {required int id,
        required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async{
        print('product id  = $id');
        Map<String,dynamic>Data= await Api().put(Url:'https://fakestoreapi.com/products/$id', body: {
          'title':title,
          'price':price,
          'description':description,
          'image':image,
          'category':category,
          
        },);
        return ProductModel.fromjson(Data);
      }
}
