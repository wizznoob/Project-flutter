import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/model.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Column(
            children: [
              Text('Please Check Your Order First'),
              Image.asset('/map.png'),
            ],
          ),

          Text('J02 Harmonika'),
          Row(
            children: [
              // ^Alamat lengkap dari masing" operator
              Text('Alamat lenkap'),

              // ^Ini arrownya langsung masuk ke google map ke alamatnya masing" operator
              IcnButton(onTap: () {}, label: Icon(Icons.arrow_left_sharp)),
            ],
          ),

          Container(
            decoration: BoxDecoration(border: Border.all(width: 2)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Item'), Text('Qty.'), Text('Price')],
                ),
                UiCart(cart: layoutCart[0]),
                UiCart(cart: layoutCart[1]),
                UiCart(cart: layoutCart[2]),

                Text('Ini Total Harga'),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UiCart extends StatelessWidget {
  final ModelCart cart;
  const UiCart({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(cart.title), Text(cart.qty), Text(cart.price)],
      ),
    );
  }
}
