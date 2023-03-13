import 'package:auth_crud_map_template/core/constants/app_image.dart';
import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: .8,
              mainAxisSpacing: 9.0,
              crossAxisSpacing: 15.0,
              maxCrossAxisExtent: 214),
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(AppImages.editImage),
                      Padding(
                        padding: const EdgeInsets.only(right: 8, top: 8),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                            child: Icon(Icons.favorite_outline),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                            child: Text("kkkkkkjjjjjjjjjj"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("999 SR"),
                        Spacer(),
                        Icon(Icons.shopping_cart_outlined),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
