import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';

class WaitingPage extends StatelessWidget {
  const WaitingPage({super.key});

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
                XButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                Image.asset('map.png'),

                DefaultButton(
                  label: 'Ini ke qr',
                  onTap: () {
                    Navigator.pushNamed(context, '/payment');
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
