import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/update_product_service.dart';
import 'package:storeapp/widgets/Custom_Button.dart';
import 'package:storeapp/widgets/Custom_TextField.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});
  static String id = 'updateScreen';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  String? name, desc, price, image;

  bool inAsyncCall = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: inAsyncCall,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Updat Product',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              CustomTextField(
                hintText: 'product name',
                onChanged: (data) {
                  name = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'description',
                onChanged: (data) {
                  desc = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hintText: 'price',
                  onChanged: (data) {
                    price = data;
                  },
                  type: TextInputType.number),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'image',
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                ActionName: 'update',
                onTap: ()async {
                 inAsyncCall = true;
                  setState(() {});
                  try {
                    await updateproduct(product);
                    const SnackBar(content: Text('updated'));
                  } catch (e) {
                    print(e.toString());
                  }

                  inAsyncCall = false;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateproduct(ProductModel product) async {
    await UpdateProductServices().updateProduct(
        id: product.id,      
        title: name==null?product.title:name!,
        price: price==null?product.price.toString():price!,
        description: desc==null?product.description:desc!,
        image: image==null?product.image:image!,
        category: product.category);
  }

   void showSnackBar(BuildContext context,String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message),),);
  }
}
