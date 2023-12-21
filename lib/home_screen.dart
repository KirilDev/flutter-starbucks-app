import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const appname = 'Home';

    return Scaffold(
      appBar: AppBar(
        title: const Text(appname),
      ),
    );
  }
}