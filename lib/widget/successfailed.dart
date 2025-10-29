import 'package:flutter/material.dart';
import 'package:jajankopi_user/pages/payment_page.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/model.dart';

class SuccessPayment extends StatelessWidget {
  const SuccessPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Your payment is success, show this recipt to our operator'),
        Image.asset('/map.png'),
        UiRecipt(recipt: layoutRecipt[1]),
        DefaultButton(
          label: 'Ini balik ke home',
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ],
    );
  }
}

class FailedPayment extends StatelessWidget {
  const FailedPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('We are really sorry about what happend'),
        Image.asset('/map.png'),
        DefaultButton(
          label: 'Ini balik ke home',
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ],
    );
  }
}
