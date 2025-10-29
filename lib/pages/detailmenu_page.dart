import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/widget/details.dart';

class DetailMenuPage extends StatelessWidget {
  const DetailMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 20),
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    XButton(
                      onTap: () {
                        Navigator.pushNamed(context, '/menu');
                      },
                    ),

                    IcnButton(
                      onTap: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      label: Icon(Icons.card_travel, size: 12),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                MenuDetails(),
                SizedBox(height: 12),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 50,
                        child: CounterDetailButton(onTap: () {}),
                      ),

                      Expanded(
                        flex: 50,
                        child: DefaultButton(
                          label: 'Cart',
                          onTap: () {
                            Navigator.pushNamed(context, '/cart');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
