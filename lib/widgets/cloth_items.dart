import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/ClothList.dart';

class ClothItem extends StatelessWidget {
  final Cloth cloths;
  const ClothItem({Key key, @required this.cloths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Container(
            width: constraints.maxWidth * 1,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Image(
              image: cloths.image.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            // height: constraints.maxHeight *0.10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 5, 30),
                    child: Text(
                      cloths.description,
                      style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add_shopping_cart),
                        color: Color(0xff1389fd),
                        textColor: Colors.white,
                        label: Text('Add to Cart')),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
