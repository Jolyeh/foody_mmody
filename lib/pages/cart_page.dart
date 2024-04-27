import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../theme/colors.dart';
import '../components/cart_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.shopping_cart, color: couleur,)
        ),
        title: Text("Cart"),
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.close, color: couleur,)
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          CartWidget(),
          CartWidget(),
          CartWidget(),
          SizedBox(height: 20,),
          Card(
            color: CupertinoColors.systemGrey6,
            elevation: 2,
            child: ListTile(
              leading: Icon(Icons.add_card, color: Colors.grey, size: 30,),
              title: Text("Promo code"),
              trailing: ElevatedButton(
                onPressed: () {
                },
                child: Text("Apply"),
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(couleur)
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Card(
            color: CupertinoColors.systemGrey6,
            child: Column(
              children: [
                ListTile(
                  title: Text("Subtotal"),
                  trailing: Text("Rs 1000.0",
                    style: TextStyle(
                      fontSize: 15
                    ),
                  ),
                ),
                Container(height: 1, width: MediaQuery.of(context).size.width-70, color: Colors.grey,),
                ListTile(
                  title: Text("Delivery"),
                  trailing: Text("Rs 100.0  ",
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ),
                Container(height: 1, width: MediaQuery.of(context).size.width-70, color: Colors.grey,),
                ListTile(
                  title: Text("Total",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Text("Rs 1200.0",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width-70,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text("Check Out"),
                    style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor: MaterialStatePropertyAll(couleur)
                    ),
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
