import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
import 'package:smartfarm/widgets/my_edge_insets.dart';
import 'package:smartfarm/widgets/my_shape.dart';

class MyOutlinedButton extends StatelessWidget {
  VoidCallback onPressed;
  Widget child;
  double padding;
  MyOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.padding = 7.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: child,
      style: OutlinedButton.styleFrom(
        primary: MyColors.grey,
        padding: MyEdgeInsets.all(padding),
        shape: MyShape.circular(radius: 10.0),
        side: const BorderSide(color: MyColors.grey),
      ),
    );
  }
}