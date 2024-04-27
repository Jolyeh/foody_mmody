import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/colors.dart';

class InfoPage extends StatelessWidget {
  int? a;
  InfoPage({super.key, this.a});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height/8,
                  decoration: BoxDecoration(
                    color: couleur,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios, color: couleur,),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.more_vert, color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Hero(
                  tag: "info" + a.toString(),
                  child: Container(
                    height: 220,
                    width: 220,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/img2.png")),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hamburger",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Burger",
                            style: TextStyle(
                                fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      Text("Rs 399.0",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: couleur
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                          },
                          child: Text("Details"),
                        style: ButtonStyle(
                          elevation: MaterialStatePropertyAll(0.5),
                          foregroundColor: MaterialStatePropertyAll(Colors.white),
                          backgroundColor: MaterialStatePropertyAll(couleur)
                        ),
                      ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        onPressed: () {
                        },
                        child: Text("Reviews"),
                        style: ButtonStyle(
                            elevation: MaterialStatePropertyAll(0.5),
                            foregroundColor: MaterialStatePropertyAll(Colors.black)
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Text("There is a constant need for new testing because each new vehicle has a different design and as technology changes ATDs must be developed to accuratrly test safety and efficacy.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/3,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: couleur,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: IconButton(
                      onPressed: () {
                      },
                      icon: Icon(Icons.arrow_back, color: couleur, size: 20,),
                    ),
                  ),
                  Text("1",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: IconButton(
                      onPressed: () {
                      },
                      icon: Icon(Icons.arrow_forward_rounded, color: couleur, size: 20,),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Text("Add to Cart",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(couleur)
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
