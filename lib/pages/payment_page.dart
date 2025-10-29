import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/model.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 20),
        children: [
          SafeArea(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Ini  QR'),
                ),

                UiRecipt(recipt: layoutRecipt[1]),

                DefaultButton(
                  label: 'ini ke mana gitu',
                  onTap: () {
                    Navigator.pushNamed(context, '/sucfail');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UiRecipt extends StatelessWidget {
  final ModelRecipt recipt;
  const UiRecipt({super.key, required this.recipt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(recipt.title),
              Text(recipt.qty),
              Text(recipt.price),
            ],
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(recipt.note),
          ),
        ],
      ),
    );
  }
}
