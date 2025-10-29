import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/widget/details.dart';

class DetailTransPage extends StatelessWidget {
  const DetailTransPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SnmallButton(
              label: 'Back',
              onPressed: () {
                Navigator.pushNamed(context, '/transaction');
              },
            ),
            SizedBox(height: 12),
            DetailCard(),
          ],
        ),
      ),
    );
  }
}
