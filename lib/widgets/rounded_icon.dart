import 'package:flutter/material.dart';

class RoundedIcons extends StatelessWidget {
  const RoundedIcons({Key? key, required this.color}) : super(key: key);

  final bool color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2.5,
            color: color == true ? Colors.lightBlueAccent : Colors.white,
          )),
    );
  }
}
