import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/model.dart';

//^ FULL MENU
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),

        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Last Order',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height: 12),

        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: layoutListFullMenu.length,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 12),
                child: FullMenu(menu: layoutListFullMenu[index]),
              );
            },
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 20, left: 16, right: 16),
          padding: EdgeInsets.symmetric(horizontal: 12),
          height: 26,
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(17),
            color: Color(0xFFEFB023),
          ),
          child: Text('Special Menu'),
        ),

        SizedBox(height: 12),

        LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned.fill(
                  bottom: 4,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 165,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 165,
                  padding: EdgeInsets.only(bottom: 4),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 40,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(width: 2)),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(
                            'assets/foto.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 25,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 70,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(
                                  left: 12,
                                  top: 8,
                                  bottom: 2,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Pistachio Latte'),
                                    Text(
                                      'Rp. 16.000',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Expanded(flex: 20, child: AddButton()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),

        SizedBox(height: 12),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 26,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xFFEFB023),
                ),
                child: Text('Coffee'),
              ),

              SizedBox(height: 8),

              Row(
                children: [
                  Expanded(child: FullMenu(menu: layoutListFullMenu[0])),
                  Expanded(child: FullMenu(menu: layoutListFullMenu[1])),
                ],
              ),
              Row(
                children: [
                  Expanded(child: FullMenu(menu: layoutListFullMenu[2])),
                  Expanded(child: FullMenu(menu: layoutListFullMenu[3])),
                ],
              ),

              FullMenu(menu: layoutListFullMenu[4]),

              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 26,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xFFEFB023),
                ),
                child: Text('Non-Coffee'),
              ),

              SizedBox(height: 8),

              FullMenu(menu: layoutListFullMenu[5]),
            ],
          ),
        ),
      ],
    );
  }
}

//^ UI Bundle Menu
class ListMenu extends StatelessWidget {
  final String img;
  final String title;
  const ListMenu({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 54,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),

          SizedBox(width: 12),
          Expanded(
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          ),

          AddMinButton(onPressed: () {}),
        ],
      ),
    );
  }
}

// !dibagian width ini bermasalah kalo dibuat responsive
// ^ UI Full Menu
class FullMenu extends StatelessWidget {
  final ModelListFullMenu menu;
  const FullMenu({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Stack(
          children: [
            Positioned.fill(
              bottom: 4,
              child: Container(
                margin: const EdgeInsets.all(6),
                height: 220,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(6),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/details');
                },
                borderRadius: BorderRadius.circular(20),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: 220,
                    width: 165,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 2)),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                              child: Image.asset(
                                menu.img,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 70,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(
                                    left: 12,
                                    top: 8,
                                    bottom: 4,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(menu.title),
                                      Text(
                                        menu.price,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Expanded(
                                flex: 30,
                                child: SizedBox(height: 30, width: 30),
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

            Positioned(bottom: 7, right: 10, child: AddButton()),
          ],
        );
      },
    );
  }
}

// !Kurang UI
// ^ UI Detail Transaction
class DetailTransaction extends StatelessWidget {
  final String img;
  final String title;
  const DetailTransaction({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 54,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),

          SizedBox(width: 12),
          Expanded(
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          ),

          SnmallButton(
            label: 'Rate',
            onPressed: () {
              Navigator.pushNamed(context, '/rate');
            },
          ),
        ],
      ),
    );
  }
}

// !Kurang UI
// ^ UI ReOrder
class Reorder extends StatelessWidget {
  final String img;
  final String title;
  const Reorder({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 54,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),

          SizedBox(width: 12),
          Expanded(
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          AddMinButton(onPressed: () {}),
        ],
      ),
    );
  }
}

// !Kurang UI
// ^ UI Review List
class ReviewList extends StatelessWidget {
  final String img;
  final String title;
  final String rate;
  const ReviewList({
    super.key,
    required this.title,
    required this.img,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 54,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),

          SizedBox(width: 12),

          Expanded(
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Icon(Icons.star), SizedBox(width: 2), Text(rate)],
          ),
        ],
      ),
    );
  }
}
