import 'package:flutter/material.dart';
import 'package:ticket_booking/constant/style_colors.dart';
import 'package:ticket_booking/widgets/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          backgroundColor: primary,
        ),
        home: const BottomBar());
  }
}
