import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import '../theme/colors.dart';
import 'login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3.3),
                child: Icon(Icons.fastfood, color: Colors.white, size: 100,),
              ),
              SizedBox(height: 10,),
              Text(
                "Foody Moody",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/2.4,),
              Text(
                "OneKode",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: couleur,
        splashIconSize: 2500,
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        nextScreen: LoginPage()
    );
  }
}

/*class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3.5),
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              SizedBox(height: 30,),
              Text(
                "Foody Moody",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/2.4,),
              Text(
                "OneKode",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} */
