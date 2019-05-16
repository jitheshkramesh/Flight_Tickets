import '../pages/custom_appbar.dart';

import '../pages/home_bottom.dart';

import '../pages/home_top.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Column(
          children: <Widget>[
            HomeTop(),
            HomeBottom(),
            HomeBottom(),
          ],
        ),
      ),
    );
  }
}
