import 'package:bmi/component/constant.dart';
import 'package:flutter/material.dart';

class SetContainer extends StatelessWidget {
  final IconData logo;
  final String text;
  final Color? color;

  SetContainer({required this.logo, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kpad),
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            logo,
            color: Colors.white,
            size: 60,
          ),
          const SizedBox(
            height: ksizewidth,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
