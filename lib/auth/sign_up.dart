import 'package:clothing_app_demo/auth/sign_in.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  SignUP({Key key}) : super(key: key);

  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 50.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi :)",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 30.0),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.0),
                    Text(
                      "Full Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Enter Your Name"),
                      onChanged: (val) {},
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(hintText: "Enter Your Email Address"),
                      onChanged: (val) {},
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(hintText: "Enter Your Password"),
                      obscureText: true,
                      onChanged: (val) {},
                    ),
                    SizedBox(height: 50.0),
                    ButtonTheme(
                      minWidth: double.infinity,
                      height: 50.0,
                      child: RaisedButton(
                        elevation: 1.0,
                        color: Color(0xFF1389fd),
                        onPressed: () {
                          // Navigator.push(context,
                          // MaterialPageRoute(builder: (context) => SignUP()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?"),
                          GestureDetector(
                            child: Text(
                              " Log In",
                              style: TextStyle(color: Color(0xFF1389fd)),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
