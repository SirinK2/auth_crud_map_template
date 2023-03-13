import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/product_controller.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({Key? key}) : super(key: key);
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: productController.searchTextController,
        onChanged: (searchName) {},
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: const Icon(Icons.clear),
          hintText: "Search with name & price",
        ),
      ),
    );
  }
}
