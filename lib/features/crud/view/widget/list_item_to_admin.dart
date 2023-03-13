import 'package:flutter/material.dart';

class ListItemToAdmin extends StatelessWidget {
  const ListItemToAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: ((context,index){
          return Card(
          child:  Text("jjj"),
          );

        }
    )

    );
  }
}
