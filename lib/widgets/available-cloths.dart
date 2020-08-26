import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'package:clothing_app_demo/model/ClothList.dart';

import 'package:clothing_app_demo/widgets/cloth_list.dart';

class AvailableCloths extends StatefulWidget {
  @override
  _AvailableClothsState createState() => _AvailableClothsState();
}

class _AvailableClothsState extends State<AvailableCloths> {
  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/config.json');
  }

  final List<Cloth> _clothList = [
    Cloth(
        id: 1,
        image: Image(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/img5.jpg',
          ),
        ),
        description:
            'cotton which is generally accepted and made off thread-like material creats a comfort when its worn  '),
    Cloth(
        id: 1,
        image: Image(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/img2.jpg',
          ),
        ),
        description:
            'it keeps the body warm during cold weather and as well cool during harsh weather'),
    Cloth(
        id: 1,
        image: Image(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/img3.jpg',
          ),
        ),
        description:
            'plain and pattern material are use occassionially for making native wears '),
    Cloth(
        id: 1,
        image: Image(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/img4.jpg',
          ),
        ),
        description:
            'suite wears as the name implies serves as an attire for making suites during wedding and other occasions  '),
    Cloth(
        id: 1,
        image: Image(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/ankara.jpg',
          ),
        ),
        description:
            'cotton which is generally accepted and made off thread-like material creats a comfort when its worn  '),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ClothList(_clothList),
        ],
      ),
    );
  }
}
