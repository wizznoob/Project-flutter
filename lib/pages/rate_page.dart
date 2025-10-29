import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/widget/rate.dart';

class RatePage extends StatelessWidget {
  const RatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 20),
        children: [
          Column(
            children: [
              Rate(),
              DefaultButton(
                label: 'Confirm',
                onTap: () {
                  Navigator.pushNamed(context, '/waiting');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
