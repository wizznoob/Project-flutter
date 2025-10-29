import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jajankopi_user/pages/afpayment_page.dart';
import 'package:jajankopi_user/pages/bundle_page.dart';
import 'package:jajankopi_user/pages/cart_page.dart';
import 'package:jajankopi_user/pages/detailtrans_page.dart';
import 'package:jajankopi_user/pages/detailmenu_page.dart';
import 'package:jajankopi_user/pages/home_page.dart';
import 'package:jajankopi_user/pages/menu_page.dart';
import 'package:jajankopi_user/pages/payment_page.dart';
import 'package:jajankopi_user/pages/profile_page.dart';
import 'package:jajankopi_user/pages/rate_page.dart';
import 'package:jajankopi_user/pages/reorder_page.dart';
import 'package:jajankopi_user/pages/transaction_page.dart';
import 'package:jajankopi_user/pages/waiting_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      initialRoute: '/home',
      routes: {
        '/menu': (context) => const MenuPage(),
        '/transaction': (context) => const TransactionPage(),
        '/home': (context) => const HomePage(),
        '/bundle': (context) => const BundlePage(),
        '/detailstrans': (context) => const DetailTransPage(),
        '/reorder': (context) => const ReorderPage(),
        '/details': (context) => const DetailMenuPage(),
        '/cart': (context) => const CartPage(),
        '/waiting': (context) => WaitingPage(),
        '/payment': (context) => PaymentPage(),
        '/sucfail': (context) => AfpaymentPage(),
        '/rate': (context) => RatePage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
