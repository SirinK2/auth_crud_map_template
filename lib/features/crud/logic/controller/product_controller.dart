import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/product_model.dart';
import '../repository/product_repository.dart';

class ProductController extends GetxController{
  final ProductRepository _productRepository = ProductRepository();

  TextEditingController searchTextController = TextEditingController();

  TextEditingController nameProductTextController = TextEditingController();
  TextEditingController priceProductTextController = TextEditingController();
  TextEditingController productDescriptionTextController = TextEditingController();

  addProduct(ProductModel productModel) async {
    await _productRepository.addProduct(productModel);
  }





}