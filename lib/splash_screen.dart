import 'package:clothing_app_demo/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

// import './widgets/available-cloths.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 5,
      ),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            // Redirects to the sign in widget after splash screen widget loads
            builder: (context) => SignIn(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage(
                'assets/images/logo.png',
              ),
              height: 150,
            ),
            Text(
              'Customized',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                  color: Color(0xff1389FD),
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 5,
                ),
              ),
            ),
            Text(
              'native school',
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 25,
                  letterSpacing: 1,
                  height: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class SplashScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

// }
