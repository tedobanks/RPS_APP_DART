import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardContainer extends StatefulWidget {
  String text;
  String value;
  CardContainer({Key? key, required this.text, required this.value})
      : super(key: key);

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Container(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 13,
              ),
              Text(
                widget.text,
                style: TextStyle(
                    fontFamily: 'Raleway-Bold',
                    fontSize: 30,
                    color: Theme.of(context).primaryColorDark),
              ),
              Text(
                widget.value,
                style: TextStyle(
                    fontSize: 65,
                    fontFamily: 'Raleway',
                    color: Theme.of(context).primaryColorDark),
              )
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                  color: Theme.of(context).primaryColorLight, width: 2))),
    );
  }
}
