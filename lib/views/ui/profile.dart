import 'package:ecommerce_site/views/shared/app_style.dart';
import 'package:flutter/material.dart';

class ProfiilePage extends StatefulWidget {
  const ProfiilePage({super.key});

  @override
  State<ProfiilePage> createState() => _ProfiilePageState();
}

class _ProfiilePageState extends State<ProfiilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'home-page',
          style: appStyle(
            40,
            Colors.black,
            FontWeight.bold,
          ),
        ),
      ),
    );
    ;
  }
}
