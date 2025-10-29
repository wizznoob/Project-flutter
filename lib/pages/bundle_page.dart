import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/botnav.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/widget/form.dart';

class BundlePage extends StatelessWidget {
  const BundlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(bottom: 20),
          children: [
            FormBundle(),
            SizedBox(height: 8),
            DefaultButton(
              label: 'Order',
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BotNav(),
    );
  }
}
