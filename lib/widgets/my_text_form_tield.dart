import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
import 'package:smartfarm/widgets/my_edge_insets.dart';

class MyTextFormField extends StatelessWidget {
  String? hint;
  TextEditingController? controller;
  TextInputAction? action;
  TextInputType? inputType;
  TextCapitalization capitalization;
  bool obscureText;

  MyTextFormField({
    Key? key,
    this.hint,
    this.controller,
    this.inputType,
    this.action,
    this.capitalization = TextCapitalization.none,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: capitalization,
      obscureText: obscureText,
      textInputAction: action,
      keyboardType: inputType,
      // cursorColor: grey,
      style: _textStyle(),
      decoration: _setDecoration(),
    );
  }

  InputDecoration _setDecoration() => InputDecoration(
        hintText: hint,
        hintStyle: _textStyle(),
        border: _setBorder(),
        focusedBorder: _setBorder(),
        contentPadding: MyEdgeInsets.symmetric(v: 18, h: 20),
      );

  OutlineInputBorder _setBorder() => OutlineInputBorder(
      borderSide: const BorderSide(color: MyColors.grey),
      borderRadius: BorderRadius.circular(getUniqueW(10.0)));

  TextStyle _textStyle() => TextStyle(
        color: MyColors.grey,
        fontSize: getUniqueW(16.0),
        fontWeight: FontWeight.w400,
      );
}
