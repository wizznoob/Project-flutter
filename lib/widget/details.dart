import 'package:flutter/material.dart';
import 'package:jajankopi_user/model.dart';
import 'menu.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(layoutDetailTransaction.length, (index) {
        return DetailTransaction(
          title: layoutDetailTransaction[index].title,
          img: layoutDetailTransaction[index].img,
        );
      }),
    );
  }
}

class MenuDetails extends StatelessWidget {
  const MenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 400,
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(border: Border.all(width: 2)),
          child: Image.asset('/map.png'),
        ),

        Text('Ini Nama Produk'),

        SizedBox(height: 8),

        Text('ini harga'),

        SizedBox(height: 8),

        Icon(Icons.star),

        SizedBox(height: 8),

        Text('Ini rating kayak 4.5'),

        // ^Description Section
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 8, bottom: 8),
          decoration: BoxDecoration(border: Border.all(width: 2)),
          child: Column(
            children: [
              Text('Ini Judul deskripsi, nggak usah diubah'),

              SizedBox(height: 8),

              Text('ini deskripsi menu'),
            ],
          ),
        ),

        // ^Review Section
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(border: Border.all(width: 2)),
          child: Column(
            children: [
              // &untuk setting gambar sama textnya ada di model
              ...List.generate(layoutReview.length, (index) {
                return ReviewList(
                  title: layoutReview[index].title,
                  img: layoutReview[index].img,
                  rate: layoutReview[index].rate,
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
