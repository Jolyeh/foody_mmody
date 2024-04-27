import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../theme/colors.dart';
import '../pages/info_page.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => InfoPage(),
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
            Container(
              height: 90,
              width: 130,
              color: couleur,
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
    );
  }
}
