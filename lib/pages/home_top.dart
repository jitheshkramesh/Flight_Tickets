import '../pages/custom_shape_clipper.dart';
import 'package:flutter/material.dart';

Color firstColor = Color(0xFFF47015);
Color secondColor = Color(0xFFEF4772C);

class HomeTop extends StatefulWidget {
  @override
  _HomeTopState createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [firstColor, secondColor],
            )),
          ),
        ),
      ],
    );
  }
}
