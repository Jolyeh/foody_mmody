import 'package:flutter/material.dart';
import '../theme/colors.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 75,
                width: 75,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/img2.png"))
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 5,),
                  Text("Hamburger",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/3+60,
                    child: Text("There is a constant need for new testing because each new vehicle has a different design",
                      style: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),
                  Text("Rs 399.0",
                    style: TextStyle(
                        fontSize: 12,
                        color: couleur
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                  },
                  icon: Icon(Icons.favorite, color: couleur,)
              ),
              SizedBox(height: 25,),
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
    );
  }
}
