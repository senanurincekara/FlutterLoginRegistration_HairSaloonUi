import 'package:flutter/material.dart';
import 'package:loginscreen/Screens/Register_page.dart';
import 'package:loginscreen/Screens/login_page.dart';
import 'package:loginscreen/Utils/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('images/assets/Hairsaloon.png'),
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fitHeight,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Chic Cuts',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: textColor1,
                        height: 1.2,
                      ),
                    ),
                  ),
                  Spacer(),
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'Experience the best in hair care and style with our professional team. Book your appointment today!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 3
                            ..color = const Color.fromARGB(255, 0, 7, 24),
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        'Experience the best in hair care and style with our professional team. Book your appointment today!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 249, 249, 249),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: backgroundColor3.withOpacity(0.9),
                        border: Border.all(color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.05),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(0, -1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigate to register page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                  ),
                                );
                              },
                              child: Container(
                                height: size.height * 0.08,
                                width: size.width / 2.2,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: textColor1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                // Navigate to login page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: textColor1,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
