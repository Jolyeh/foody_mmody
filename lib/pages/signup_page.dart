import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'all_page.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
              "Sign Up",
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
                              leading: Icon(Icons.account_circle, color: couleur,),
                              hintText: "Name",
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 40,
                            child: SearchBar(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                              elevation: MaterialStatePropertyAll(0),
                              leading: Icon(Icons.mail_outline, color: couleur,),
                              hintText: "Name",
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
                    SizedBox(height: 30,),
                    Container(
                      width: MediaQuery.of(context).size.width-50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AllPage(),));
                        },
                        child: Text(
                          "SIGN UP",
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
                        CircleAvatar(
                          backgroundColor: couleur,
                          child: IconButton(
                            onPressed: () {
                            },
                            icon: Icon(Icons.tiktok, color: Colors.white,),
                          ),
                        ),
                        SizedBox(width: 20,),
                        CircleAvatar(
                          backgroundColor: couleur,
                          child: IconButton(
                            onPressed: () {
                            },
                            icon: Icon(Icons.title, color: Colors.white,),
                          ),
                        ),
                        SizedBox(width: 20,),
                        CircleAvatar(
                          backgroundColor: couleur,
                          child: IconButton(
                            onPressed: () {
                            },
                            icon: Icon(Icons.text_increase, color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have you a account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                          },
                          child: Text(
                            "Login",
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
