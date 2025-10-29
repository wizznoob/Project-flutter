import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/successfailed.dart';

class AfpaymentPage extends StatelessWidget {
  const AfpaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 20),
        children: [SuccessPayment(), FailedPayment()],
      ),
    );
  }
}
