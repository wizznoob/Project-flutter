import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/widget/reoder.dart';

class ReorderPage extends StatelessWidget {
  const ReorderPage({super.key});

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
            ReOrder(),
            DefaultButton(
              label: 'Order',
              onTap: () {
                Navigator.pushNamed(context, '/waiting');
              },
            ),
          ],
        ),
      ),
    );
  }
}
