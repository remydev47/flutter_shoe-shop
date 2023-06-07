import 'package:ecommerce_site/controllers/mainscreen_provider.dart';
import 'package:ecommerce_site/views/shared/app_style.dart';
import 'package:ecommerce_site/views/shared/bottom_nav.dart';
import 'package:ecommerce_site/views/shared/bottom_nav_widget.dart';
import 'package:ecommerce_site/views/ui/cartpage.dart';
import 'package:ecommerce_site/views/ui/homepage.dart';
import 'package:ecommerce_site/views/ui/profile.dart';
import 'package:ecommerce_site/views/ui/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = [
    const HomePage(),
    const SearchPage(),
    const HomePage(),
    const CartPage(),
    const ProfiilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(builder: (
      context,
      mainScreenNotifier,
      child,
    ) {
      return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottomNavbar(),
      );
    });
  }
}
