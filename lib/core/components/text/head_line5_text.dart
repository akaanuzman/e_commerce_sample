import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Headline5Text extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;

  const Headline5Text({Key? key, required this.data, this.fontWeight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: context.textTheme.headline5!.copyWith(fontWeight: fontWeight),
    );
  }
}
