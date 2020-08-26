import 'package:clothing_app_demo/model/ClothList.dart';
import 'package:flutter/material.dart';

class ClothList extends StatelessWidget {
  List<Cloth> cloths;
  ClothList(this.cloths);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...cloths.map((cloths) {
              return Container(
                child: Card(
                  elevation: 6,
                  child: Container(
                    child: Column(children: [
                      Image.asset(cloths.image.toString()),
                    ],) 
                  ),
                  
                ),
              );
            },).toList(),

            
          ],
          
        ),
      ),
    );
  }
}
