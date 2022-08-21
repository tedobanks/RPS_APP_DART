import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Headers extends StatelessWidget {
  String? text;

  Headers(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
