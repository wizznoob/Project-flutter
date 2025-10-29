import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/widget/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 20),
        children: [
          SafeArea(
            child: Column(
              children: [
                XButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/details');
                  },
                ),
                Cart(),
                DefaultButton(
                  label: 'Ini Button Order',
                  onTap: () {
                    Navigator.pushNamed(context, '/waiting');
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
