import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This is the homepage',
          style: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
