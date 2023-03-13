import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../logic/controller/product_controller.dart';
import '../../model/product_model.dart';

class ShopScreenA extends StatelessWidget {
  ShopScreenA({Key? key}) : super(key: key);
  final ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      color: Colors.white,
      alignment: Alignment.center,
      child: MaterialButton(
        onPressed: () async {
          var prd = ProductModel(
            productName: 'Apple',
            productDescription: 'fruit',
            productPrice: 2,
            productImage: 'productImage',
          );
          await productController.addProduct(prd);
        },
        child: const Text('add product'),
      ),
    );
  }
}
