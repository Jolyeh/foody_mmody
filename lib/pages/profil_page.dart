import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/colors.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.menu, color: couleur,)
        ),
        title: Text("Profile"),
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.notifications_none, color: couleur,)
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Container(
            height: 110,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey5,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Joel Prince",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text("joelprince@gmail.com",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                        onPressed: () {
                        },
                        child: Text("Edit Profile"),
                      style: ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        backgroundColor: MaterialStatePropertyAll(couleur)
                      ),
                    )
                  ],
                ),
                Container(
                  height: 80,
                  width: 80,
                  child: CircleAvatar(backgroundImage: AssetImage("images/img3.jpg"),),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width/2-25,
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey5,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, color: couleur, size: 55,),
                      Text("Favorite",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width/2-25,
                  decoration: BoxDecoration(
                      color: CupertinoColors.systemGrey5,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fastfood_sharp, color: couleur, size: 55,),
                      Text("Past Orders",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: CupertinoColors.systemGrey5,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.star_border_outlined),
                    SizedBox(width: 5,),
                    Text("Your Ratings !"),
                  ],
                ),
                Row(
                  children: [
                    Text("4.0"),
                    SizedBox(width: 5,),
                    Icon(Icons.star, color: couleur,)
                  ],
                )
              ],
            )
          ),
          SizedBox(height: 25,),
          Text("Other Features",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
            ),
          ),
          ListTile(
            leading: Icon(Icons.quiz, color: couleur,),
            title: Text("Frequently Asked Question",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.star, color: couleur,),
            title: Text("Rate Us",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.chat_bubble, color: couleur,),
            title: Text("Share your feedback",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip, color: couleur,),
            title: Text("Privacy Policy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: couleur,),
            title: Text("Log Out",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
