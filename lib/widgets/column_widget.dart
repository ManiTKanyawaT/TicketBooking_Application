import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import '../constant/app_layouts.dart';
import '../constant/style_colors.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.thirdText,
      required this.fourthText,
      required this.alignment1,
      required this.alignment})
      : super(key: key);

  final String firstText;
  final CrossAxisAlignment alignment;
  final String secondText;
  final String thirdText;
  final String fourthText;
  final CrossAxisAlignment alignment1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: alignment,
          children: [
            Text(
              firstText,
              style: Styless.headTextStyles3,
            ),
            Gap(AppLayout.getHeight(10)),
            Text(
              secondText,
              style: Styless.headTextStyles4.copyWith(color: Colors.grey),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: alignment1,
          children: [
            Text(
              thirdText,
              style: Styless.headTextStyles3,
            ),
            Gap(AppLayout.getHeight(10)),
            Text(
              fourthText,
              style: Styless.headTextStyles4.copyWith(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}

class SeparateLine extends StatelessWidget {
  const SeparateLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.max,
            children: [
              ...List.generate(
                  15,
                  (index) => const SizedBox(
                        width: 3,
                        height: 1,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                          color: Colors.grey,
                        )),
                      ))
            ],
          );
        },
      ),
    );
  }
}
