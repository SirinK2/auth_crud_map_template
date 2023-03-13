import 'package:flutter/material.dart';

import '../widget/card_item_widget.dart';
import '../widget/search_widget.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shop",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      body: Column(
        children: [
          SearchWidget(),
          CardItemWidget(),
        ],
      ),
    );
  }
}
