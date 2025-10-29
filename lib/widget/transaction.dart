import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/responsive.dart';

class TransBar extends StatelessWidget {
  const TransBar({super.key});

  @override
  Widget build(BuildContext context) {
    final rf = ResponsiveFont(context);

    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              bottom: -4,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detailstrans');
                },
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.white.withOpacity(0.2),
                highlightColor: Colors.transparent,
                child: Ink(
                  decoration: BoxDecoration(
                    color: Color(0xFFEF9C98),
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    height: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sunday, 12-10-2025',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 50,
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 60,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                            border: Border.all(width: 2),
                                          ),
                                        ),
                                      ),

                                      Positioned(
                                        left: 30,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle,
                                            border: Border.all(width: 2),
                                          ),
                                        ),
                                      ),

                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'KSGA | CB | CL',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  SizedBox(height: 2),

                                  Text(
                                    '+ 10 pts.',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 4, top: 12),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 50,
                                child: Text(
                                  'Rp.82.000',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 30,
              right: 30,
              child: SnmallButton(
                label: 'Re-Order',
                onPressed: () {
                  Navigator.pushNamed(context, '/reorder');
                },
              ),
            ),
          ],
        ),

        SizedBox(height: 20),

        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              bottom: -4,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detailstrans');
                },
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.white.withOpacity(0.2),
                highlightColor: Colors.transparent,
                child: Ink(
                  decoration: BoxDecoration(
                    color: Color(0xFFEF9C98),
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    height: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sunday, 12-10-2025',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 50,
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 60,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                            border: Border.all(width: 2),
                                          ),
                                        ),
                                      ),

                                      Positioned(
                                        left: 30,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle,
                                            border: Border.all(width: 2),
                                          ),
                                        ),
                                      ),

                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'KSGA | CB | CL',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  SizedBox(height: 2),

                                  Text(
                                    '+ 10 pts.',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 4, top: 12),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 50,
                                child: Text(
                                  'Rp.82.000',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 30,
              right: 30,
              child: SnmallButton(
                label: 'Re-Order',
                onPressed: () {
                  Navigator.pushNamed(context, '/reorder');
                },
              ),
            ),
          ],
        ),

        SizedBox(height: 20),

        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              bottom: -4,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detailstrans');
                },
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.white.withOpacity(0.2),
                highlightColor: Colors.transparent,
                child: Ink(
                  decoration: BoxDecoration(
                    color: Color(0xFFEF9C98),
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    height: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sunday, 12-10-2025',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 50,
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 60,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                            border: Border.all(width: 2),
                                          ),
                                        ),
                                      ),

                                      Positioned(
                                        left: 30,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle,
                                            border: Border.all(width: 2),
                                          ),
                                        ),
                                      ),

                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'KSGA | CB | CL',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  SizedBox(height: 2),

                                  Text(
                                    '+ 10 pts.',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(right: 4, top: 12),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 50,
                                child: Text(
                                  'Rp.82.000',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 30,
              right: 30,
              child: SnmallButton(
                label: 'Re-Order',
                onPressed: () {
                  Navigator.pushNamed(context, '/reorder');
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
