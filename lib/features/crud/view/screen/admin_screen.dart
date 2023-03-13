import 'package:auth_crud_map_template/features/crud/view/widget/list_item_to_admin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/routes/route.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"
        ,style: Theme.of(context).textTheme.bodyLarge,),
        actions: [
          IconButton(onPressed: () {
             Get.toNamed(Routes.addProductScreen);
          }, icon: Icon(Icons.add)),
        ],
      ),

      body: ListItemToAdmin(),

    );
  }
}
