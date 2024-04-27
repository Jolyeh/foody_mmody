import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/colors.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CupertinoColors.systemGrey6,
      elevation: 2,
      child: Container(
        margin: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/img2.png"))
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hamburger",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("Rs 399.0",
                      style: TextStyle(
                        color: couleur,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: couleur, size: 15,),
                        SizedBox(width: 5,),
                        Text("4.5",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 28,
                  width: 28,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: couleur,
                      shape: BoxShape.circle
                  ),
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(Icons.arrow_upward, color: Colors.white, size: 14,),
                  ),
                ),
                Text("2",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 28,
                  width: 28,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: couleur,
                      shape: BoxShape.circle
                  ),
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(Icons.arrow_downward, color: Colors.white, size: 14,),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
