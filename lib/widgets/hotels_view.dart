import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/constant/app_layouts.dart';
import 'package:ticket_booking/constant/style_colors.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({Key? key, required this.hotelsss}) : super(key: key);
  final Map<String, dynamic> hotelsss;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: size.width * 0.7,
      height: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color.fromARGB(190, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Styless.primaryColor,
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/assets_${hotelsss['image']}.jpeg'),
                  fit: BoxFit.fill),
            ),
          ),
          const Gap(20),
          Text(
            hotelsss['Name'],
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          const Gap(10),
          Text(
            hotelsss['place'],
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const Gap(10),
          Text(
            '${hotelsss['Address']}...',
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
