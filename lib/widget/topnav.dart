import 'package:flutter/material.dart';
import 'package:jajankopi_user/responsive.dart';
import 'package:jajankopi_user/widget/button.dart';

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    final rf = ResponsiveFont(context);

    return Container(
      padding: EdgeInsets.only(top: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 15,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      customBorder: CircleBorder(),
                      child: Container(
                        width: 38,
                        height: 38,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.black),
                          image: DecorationImage(
                            image: AssetImage('assets/foto.jpg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 50,
                  child: Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'How do you feel today,',
                            style: TextStyle(
                              fontSize: rf.paragraph,
                              height: 0.3,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Oman',
                            style: TextStyle(
                              fontSize: rf.heading,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 25,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      customBorder: CircleBorder(),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.black),
                          color: Color(0xFFEFB023),
                        ),
                        child: Icon(Icons.notifications, size: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 5,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(22.5),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(22.5),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 50,
                        child: Container(
                          margin: EdgeInsets.only(left: 12, right: 4),
                          height: 130,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: AssetImage('assets/foto.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '1000',
                              style: TextStyle(fontSize: rf.heading),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 50,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 4,
                            right: 12,
                            top: 8,
                            bottom: 12,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 70,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 2),
                                  height: 88,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 30,
                                child: DefaultButton(
                                  label: 'pencet',
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
