import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/profile.dart';
import 'package:jajankopi_user/widget/botnav.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [ProfileCard()],
      ),
      bottomNavigationBar: const BotNav(),
    );
  }
}
