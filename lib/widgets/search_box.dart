import 'package:flutter/material.dart';

import '../constant/app_layouts.dart';

Widget searchBox() {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
    ),
    margin: const EdgeInsets.only(
      top: 30,
      bottom: 30,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: const TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey)),
    ),
  );
}

class FittedBoxWidgets extends StatelessWidget {
  const FittedBoxWidgets({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        width: size.width * 0.44,
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppLayout.getWidth(50)),
              bottomLeft: Radius.circular(AppLayout.getWidth(50))),
          color: Colors.white,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class FittedBoxWidgets1 extends StatelessWidget {
  const FittedBoxWidgets1({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        width: size.width * 0.44,
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(AppLayout.getWidth(50)),
              bottomRight: Radius.circular(AppLayout.getWidth(50))),
          color: const Color.fromARGB(46, 158, 158, 158),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
