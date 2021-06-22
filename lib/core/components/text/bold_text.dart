import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String data;

  const BoldText({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
