import 'package:clothing_app_demo/model/ClothList.dart';
import 'package:clothing_app_demo/widgets/cloth_items.dart';
import 'package:flutter/material.dart';

class ClothList extends StatelessWidget {
  final List<Cloth> cloths;
  ClothList(this.cloths);
  @override
  Widget build(BuildContext context) {
    

    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...cloths.map((cloths) {
                return ClothItem(cloths: cloths);
              },
            ).toList(),
          ],
        ),
      ),
    );
  }
}
