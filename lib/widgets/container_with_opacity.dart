import 'package:flutter/material.dart';
import 'package:smartfarm/widgets/my_decoration.dart';
import 'package:smartfarm/widgets/my_edge_insets.dart';

class ContainerWithOpacity extends StatelessWidget {
  double vPadding;
  double hPadding;
  Widget? child;

  ContainerWithOpacity({
    Key? key,
    this.hPadding = 15.0,
    this.vPadding = 5.0,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      padding: MyEdgeInsets.symmetric(h: hPadding, v: vPadding),
      decoration: MyDecoration.circular(
          radius: 10.0, color: Colors.white.withOpacity(0.2)),
    );
  }
}
