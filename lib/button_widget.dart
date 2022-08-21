import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpecialButton extends StatefulWidget {
  VoidCallback? eventHandler;
  String? text;
  SpecialButton({Key? key, required this.eventHandler, required this.text})
      : super(key: key);

  @override
  State<SpecialButton> createState() => _SpecialButtonState();
}

class _SpecialButtonState extends State<SpecialButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.eventHandler,
      child: Text(
        (widget.text).toString(),
        style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 28,
            color: Theme.of(context).primaryColorDark),
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            side: BorderSide(
              color: Theme.of(context).primaryColorLight,
              width: 2,
            )),
      ),
    );
  }
}
