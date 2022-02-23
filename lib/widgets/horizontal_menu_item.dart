import 'package:flutter/material.dart';

class HorizontalMenuItem extends StatelessWidget {
  String? itemName;
  void Function? onTap;
  HorizontalMenuItem(
      {Key? key, this.itemName, this.onTap});

  @override
  Widget build(BuildContext context) {
    double _width =
        MediaQuery.of(context).size.width;
    return InkWell(
        onTap: onTap,
        onHover: ,
        child: Container());
  }
}
