import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../constant/app_layouts.dart';
import '../constant/style_colors.dart';

class TxtButton extends StatelessWidget {
  const TxtButton({Key? key, required this.iconss, required this.text})
      : super(key: key);

  final IconData iconss;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: AppLayout.getWidth(25), right: AppLayout.getWidth(25)),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(12),
          vertical: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
      child: Row(children: [
        Icon(
          iconss,
          color: Colors.grey,
        ),
        const Gap(15),
        Text(
          text,
          style: Styless.textStyles,
        )
      ]),
    );
  }
}

class FineTickets extends StatelessWidget {
  const FineTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: AppLayout.getWidth(25), right: AppLayout.getWidth(25)),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(15),
          vertical: AppLayout.getHeight(15)),
      decoration: BoxDecoration(
          color: const Color(0xD91130CE),
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Find Tickets',
          style: Styless.textStyles.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
