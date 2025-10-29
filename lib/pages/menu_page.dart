import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/botnav.dart';
import 'package:jajankopi_user/widget/picklocation.dart';
import 'package:jajankopi_user/widget/banner.dart';
import 'package:jajankopi_user/widget/menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 20),
        children: [
          SafeArea(child: PickLocation()),
          BasicBanner(),
          Menu(),
        ],
      ),
      bottomNavigationBar: const BotNav(),
    );
  }
}
