import 'package:flutter/material.dart';
import 'package:jajankopi_user/model.dart';
import 'menu.dart';

class ReOrder extends StatelessWidget {
  const ReOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(layoutReorder.length, (index) {
        return Reorder(
          title: layoutReorder[index].title,
          img: layoutReorder[index].img,
        );
      }),
    );
  }
}
