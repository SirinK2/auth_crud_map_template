import 'package:auth_crud_map_template/core/constants/app_strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/product_model.dart';

FirebaseFirestore fireStore = FirebaseFirestore.instance;

class ProductRepository {
  final CollectionReference _productCollection =
      fireStore.collection(AppStrings.productCollection);

  addProduct(ProductModel productModel) async {
    await _productCollection.doc().set(productModel.toJson());
  }
}
