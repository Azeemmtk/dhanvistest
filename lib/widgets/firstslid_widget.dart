import 'package:flutter/material.dart';

class firstslid extends StatelessWidget {
  firstslid({super.key, required this.name, required this.img});

  String img;
  String name;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Container(child: Image.asset(img)),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
