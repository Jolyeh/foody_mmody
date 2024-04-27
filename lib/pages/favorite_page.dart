import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../components/favorite_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.menu, color: couleur,)
        ),
        title: Text("Favorite"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            FavoriteCard(),
            FavoriteCard(),
            FavoriteCard(),
            FavoriteCard(),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text("Add to Cart"),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(couleur),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    elevation: MaterialStatePropertyAll(0)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

