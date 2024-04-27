import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/colors.dart';

class FoodName extends StatelessWidget {

  Color? bg, fg;
  String? text;

  FoodName({super.key, this.bg, this.fg, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/4-15,
      height: 28,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Text("$text",
        style: TextStyle(
            fontSize: 15,
            color: fg
        ),
      ),
    );
  }
}
