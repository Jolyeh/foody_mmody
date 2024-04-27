import 'package:flutter/material.dart';
import 'package:foody_moody/pages/signup_page.dart';
import '../theme/colors.dart';
import 'all_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      body: ListView(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height/2.5,
            padding: EdgeInsets.all(25),
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height/1.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(70), topLeft: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color: couleur,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            child: SearchBar(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                              elevation: MaterialStatePropertyAll(0),
                              leading: Icon(Icons.mail_outline, color: couleur,),
                              hintText: "Email",
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 40,
                            child: SearchBar(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                              elevation: MaterialStatePropertyAll(0),
                              leading: Icon(Icons.lock, color: couleur,),
                              hintText: "Password",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                    Container(
                      width: MediaQuery.of(context).size.width-50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AllPage(),));
                          },
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                          style: ButtonStyle(
                            elevation: MaterialStatePropertyAll(0),
                            backgroundColor: MaterialStatePropertyAll(couleur),
                          ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont't have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: couleur,
                                fontSize: 13,
                              ),
                            ),
                        )
                      ],
                    )
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
