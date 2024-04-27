import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../theme/colors.dart';
import '../components/food_name.dart';
import '../components/food_card.dart';
import 'info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final List<int> food =[1,2,3,4,5,6,7];
    final List<int> foods =[8,9,10,11,12,13,14];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/img3.jpg"),),
                IconButton(
                    onPressed: () {
                    },
                    icon: Icon(Icons.notifications_none, color: couleur,)
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text("Hello, ",
                  style: TextStyle(
                      fontSize: 17
                  ),
                ),
                Text("Joel",
                  style: TextStyle(
                      fontSize: 17,
                      color: couleur
                  ),
                ),
              ],
            ),
            Text("Welcome Back",
              style: TextStyle(
                  fontSize: 17
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/1.35,
                  child: SearchBar(
                    leading: Icon(Icons.search, color: couleur,),
                    elevation: MaterialStatePropertyAll(1),
                    hintText: "Search",
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: couleur,
                      shape: BoxShape.circle
                  ),
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(Icons.settings, color: Colors.white,),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FoodName(text: "All", fg: Colors.white, bg: couleur,),
                FoodName(text: "Pizza", fg: Colors.black, bg: CupertinoColors.systemGrey5,),
                FoodName(text: "Burger", fg: Colors.black, bg: CupertinoColors.systemGrey5,),
                FoodName(text: "Biryani", fg: Colors.black, bg: CupertinoColors.systemGrey5,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Food",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text("See All",
                  style: TextStyle(
                      fontSize: 15,
                      color: couleur
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: food.map((e) => GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => InfoPage(a: e,),
                            transitionsBuilder: (context, animation, secondaryAnimation, chid){
                              animation = CurvedAnimation(parent: animation, curve: Curves.ease);
                              return FadeTransition(
                                opacity: animation,
                                child: chid,
                              );
                            }
                        )
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    padding: EdgeInsets.all(10),
                    height: 240,
                    width: 140,
                    decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {
                            },
                            icon: Icon(Icons.favorite_outline, color: couleur,),
                          ),
                        ),
                        Hero(
                          tag: "info" + e.toString(),
                          child: Container(
                            height: 90,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("images/img2.png")),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Hamburger",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text("Burger",
                          style: TextStyle(
                              fontSize: 13
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Rs 399.0",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: couleur,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Icon(Icons.add, color: Colors.white,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )).toList(),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Nearest",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text("See All",
                  style: TextStyle(
                      fontSize: 15,
                      color: couleur
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: foods.map((e) => GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => InfoPage(a: e,),
                            transitionsBuilder: (context, animation, secondaryAnimation, chid){
                              animation = CurvedAnimation(parent: animation, curve: Curves.ease);
                              return FadeTransition(
                                opacity: animation,
                                child: chid,
                              );
                            }
                        )
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    padding: EdgeInsets.all(10),
                    height: 240,
                    width: 140,
                    decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {
                            },
                            icon: Icon(Icons.favorite_outline, color: couleur,),
                          ),
                        ),
                        Hero(
                          tag: "info" + e.toString(),
                          child: Container(
                            height: 90,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("images/img2.png")),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Hamburger",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text("Burger",
                          style: TextStyle(
                              fontSize: 13
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Rs 399.0",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: couleur,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Icon(Icons.add, color: Colors.white,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
