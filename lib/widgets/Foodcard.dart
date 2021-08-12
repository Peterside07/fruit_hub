import 'package:flutter/material.dart';

Widget FoodCart() {
  return Container(
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/honey-lime.png",
              height: 80,
            ),
            SizedBox(
              height: 8,
            ),
            Flexible(
                child: Text(
              "Honey lime combo",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  " 2,0000 #",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )),
                Expanded(
                    child: IconButton(icon: Icon(Icons.add), onPressed: () {}))
              ],
            )
          ],
        ),
      ),
    ),
  );
}
