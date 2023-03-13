import 'package:get/get.dart';

import '../../model/product_model.dart';
import '../repository/product_repository.dart';

class ProductController extends GetxController{
  final ProductRepository _productRepository = ProductRepository();

  addProduct(ProductModel productModel) async {
    await _productRepository.addProduct(productModel);
  }





}