import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  const Rate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(border: Border.all(width: 2)),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Tulis Komentar',
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),

          Icon(Icons.star_rate_outlined),
        ],
      ),
    );
  }
}
