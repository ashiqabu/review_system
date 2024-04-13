import 'package:flutter/material.dart';

class Custom extends InputDecoration {
  final String text;
  final IconData iconData;
  final double? height;
  Custom(this.text, this.iconData, this.height)
      : super(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          label: Text(text),
          prefixIcon: Icon(iconData),
          contentPadding:
              height != null ? EdgeInsets.symmetric(vertical: height) : null,
        );
}
