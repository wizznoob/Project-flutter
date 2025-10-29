import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/botnav.dart';
import 'package:jajankopi_user/widget/date.dart';
import 'package:jajankopi_user/widget/transaction.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 20, top: 20),
        children: [
          SafeArea(child: DateCapsule()),
          SizedBox(height: 20),
          TransBar(),
        ],
      ),
      bottomNavigationBar: const BotNav(),
    );
  }
}
