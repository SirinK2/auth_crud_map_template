import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/text_field_widget.dart';
import '../../../../core/constants/app_image.dart';
import '../../../../core/constants/colors_app.dart';
import '../../../../core/constants/validation.dart';
import '../../logic/controller/product_controller.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Product",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Save",
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Stack(children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: lightColor,
                          // shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(AppImages.addProductImage)
                                as ImageProvider,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 70,
                          left: 70,
                          child: InkWell(
                            onTap: () {
                              print("object");
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: blackColor,
                              ),
                              child: const Icon(
                                Icons.add_photo_alternate_outlined,
                                color: whiteColor,
                                size: 18,
                              ),
                            ),
                          ))
                    ]),
                    const SizedBox(height: 50),
                    TextFieldWidget(
                      controller: productController.nameProductTextController,
                      obscureText: false,
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Enter Product Name Please';
                        }
                      },
                      label: 'Name Product',
                    ),
                    const SizedBox(height: 25),
                    TextFieldWidget(
                      controller: productController.priceProductTextController,
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Enter Product Price Please';
                        }
                      },
                      label: 'Price Product',
                    ),
                    const SizedBox(height: 25),
                    TextFieldWidget(
                      maxLine: 5,
                      controller:
                          productController.productDescriptionTextController,
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Enter Product Description Please';
                        }
                      },
                      label: 'Description Product',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
