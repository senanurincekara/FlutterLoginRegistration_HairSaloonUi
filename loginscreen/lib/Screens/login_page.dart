import 'package:flutter/material.dart';
import 'package:loginscreen/Screens/Register_page.dart';
import 'package:loginscreen/Utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Background image positioned at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'images/assets/image1.png', // Path to your image
              fit: BoxFit.cover,
              width: size.width,
            ),
          ),
          Container(
            color: Color.fromARGB(233, 174, 227, 255).withOpacity(0.8),
            child: SafeArea(
              child: ListView(
                children: [
                  SizedBox(height: size.height * 0.03),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hello !",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: textColor1,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Welcome back, you've been missed !",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: textColor2,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  myTextField(
                    "Enter username",
                    Colors.white,
                  ),
                  myPasswordTextField("Password", Colors.black26),
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Recovery Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: textColor2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle sign in action
                          },
                          child: InkWell(
                            child: Container(
                              width: size.width,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF17ead9),
                                    Color(0xFF6078ea)
                                  ]),
                                  borderRadius: BorderRadius.circular(6.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xFF6078ea).withOpacity(.3),
                                        offset: Offset(0.0, 8.0),
                                        blurRadius: 8.0)
                                  ]),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  child: const Center(
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 20,
                                          letterSpacing: 1.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        GestureDetector(
                          onTap: () {
                            // Navigate to register page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()),
                            );
                          },
                          child: Text.rich(
                            TextSpan(
                              text: "Not a member? ",
                              style: TextStyle(
                                color: textColor2,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              children: const [
                                TextSpan(
                                  text: "Register now",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      horizontalLine(),
                      Text(
                        "Or continue with ",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "Poppins-Medium",
                        ),
                      ),
                      horizontalLine(),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialIcon('images/assets/facebook.png'),
                      socialIcon('images/assets/google.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: 100,
          height: 2.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  Container myTextField(String hint, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 22,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 19,
          ),
        ),
      ),
    );
  }

  Container myPasswordTextField(String hint, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextField(
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 22,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 19,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            child: Icon(
              _passwordVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: color,
            ),
          ),
        ),
      ),
    );
  }

  Widget socialIcon(String assetPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          //
        },
        child: Image.asset(
          assetPath,
          height: 40,
          width: 40,
        ),
      ),
    );
  }
}
