import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/constant/app_layouts.dart';
import 'package:ticket_booking/widgets/column_widget.dart';

import '../constant/style_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  scale: 10,
                  image: AssetImage(
                    'assets/images/assets_9.jpeg',
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Personal Info', style: Styless.headTextStyles1),
                const Gap(6),
                Text('Ratchaburi',
                    style: Styless.headTextStyles3
                        .copyWith(fontSize: 12, color: Colors.grey)),
                const Gap(15),
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(120),
                      ),
                      color: Colors.blue[100]),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 3,
                        ),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.blue[100],
                          size: 15,
                        ),
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Text(
                        'Premium Status',
                        style: Styless.headTextStyles3.copyWith(
                            fontSize: 12, backgroundColor: Colors.blue[100]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Text(
                      'Edit',
                      style: Styless.textStyles
                          .copyWith(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Divider(
          color: Colors.grey.shade300,
        ),
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: AppLayout.getHeight(90),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Styless.primaryColor,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(18),
                  )),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(45),
                  vertical: AppLayout.getHeight(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styless.primaryColor,
                      size: 27,
                    ),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You Have Got a New Reward',
                        style: Styless.headTextStyles2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        'You Have 26 Flights this Year',
                        style: Styless.headTextStyles2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Gap(AppLayout.getWidth(30)),
        Container(
          margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(29)),
          child: Text(
            'Accumulated Miles',
            style: Styless.headTextStyles1.copyWith(fontSize: 20),
          ),
        ),
        Column(
          children: [
            Gap(AppLayout.getHeight(15)),
            Text(
              '546738',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                  color: Styless.textColor),
            ),
            Gap(AppLayout.getHeight(29)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(29)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mile Accrued',
                    style: Styless.headTextStyles4
                        .copyWith(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    '19 JULY 2022',
                    style: Styless.headTextStyles4
                        .copyWith(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getWidth(28)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(29)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ColumnWidget(
                      firstText: '34 567',
                      secondText: 'Miles',
                      thirdText: 'Airlines Co',
                      fourthText: 'Received from',
                      alignment1: CrossAxisAlignment.end,
                      alignment: CrossAxisAlignment.start)
                ],
              ),
            ),
            Gap(AppLayout.getWidth(28)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(29)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ColumnWidget(
                      firstText: '38',
                      secondText: 'Miles',
                      thirdText: 'Bangkok Airways',
                      fourthText: 'Received from',
                      alignment1: CrossAxisAlignment.end,
                      alignment: CrossAxisAlignment.start)
                ],
              ),
            ),
            Gap(AppLayout.getWidth(28)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(29)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ColumnWidget(
                      firstText: '23 073',
                      secondText: 'Miles',
                      thirdText: 'Air India',
                      fourthText: 'Received from',
                      alignment1: CrossAxisAlignment.end,
                      alignment: CrossAxisAlignment.start)
                ],
              ),
            ),
            Gap(AppLayout.getHeight(35)),
            Text(
              'How to Get More Miles',
              style: Styless.textStyles.copyWith(
                  color: (Styless.primaryColor), fontWeight: FontWeight.w500),
            )
          ],
        )
      ]),
    );
  }
}
