import 'package:flutter/material.dart';

class BotNav extends StatelessWidget {
  const BotNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 7, left: 3, right: 3),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 20,
            child: IconButton(
              icon: Icon(Icons.money),
              onPressed: () {
                Navigator.pushNamed(context, '/transaction');
              },
            ),
          ),
          Expanded(
            flex: 20,
            child: IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.pushNamed(context, '/menu');
              },
            ),
          ),
          Expanded(
            flex: 20,
            child: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
          Expanded(
            flex: 20,
            child: IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {
                Navigator.pushNamed(context, '/bundle');
              },
            ),
          ),
          Expanded(
            flex: 20,
            child: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ),
        ],
      ),
    );
  }
}
