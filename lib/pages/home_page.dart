import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/banner.dart';
import 'package:jajankopi_user/widget/topnav.dart';
import 'package:jajankopi_user/widget/map.dart';
import 'package:jajankopi_user/widget/botnav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(child: TopNav()),
          CarouselBanner(),
          Expanded(child: MapContainer()),
        ],
      ),
      bottomNavigationBar: const BotNav(),
    );
  }
}
