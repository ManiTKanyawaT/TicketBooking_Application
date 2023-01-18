import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/constant/app_layouts.dart';
import 'package:ticket_booking/constant/style_colors.dart';
import 'package:ticket_booking/widgets/search_box.dart';
import 'icons_txt.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styless.backgrounColor,
      body: ListView(children: [
        Gap(AppLayout.getHeight(40)),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          child: Text(
            'What are \n You looking for ?',
            style: Styless.headTextStyles1.copyWith(fontSize: 35),
          ),
        ),
        Gap(AppLayout.getHeight(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FittedBoxWidgets(
              text: 'Airlines Tickets',
            ),
            FittedBoxWidgets1(
              text: 'Hotels',
            ),
          ],
        ),
        Gap(AppLayout.getWidth(30)),
        const TxtButton(
          text: 'Departure',
          iconss: Icons.flight_land_outlined,
        ),
        const Gap(20),
        const TxtButton(
          text: 'Arrive',
          iconss: Icons.flight_takeoff_outlined,
        ),
        const Gap(20),
        const FineTickets(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(AppLayout.getWidth(25)),
              child: Text(
                'Upcoming Flight',
                style: Styless.headTextStyles2,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppLayout.getWidth(25)),
              child: InkWell(
                onTap: () {
                  debugPrint('U r tap');
                },
                child: Text(
                  'View all',
                  style:
                      Styless.textStyles.copyWith(color: Styless.primaryColor),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: AppLayout.getHeight(25)),
              padding: EdgeInsets.all(
                AppLayout.getHeight(15),
              ),
              height: AppLayout.getHeight(330),
              width: size.width * 0.42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(children: [
                Container(
                  height: AppLayout.getHeight(190),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/assets_5.jpeg'),
                          fit: BoxFit.fill)),
                ),
                const Gap(20),
                const Text(
                  'จองออนไลน์ได้ส่วนลดสูงสุดถึง 80% ข้อเสนอมีเวลาจำกัด ช้าอดหมดเร็ว จองเลย!',
                  style: TextStyle(fontSize: 15),
                )
              ]),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      right: AppLayout.getHeight(15),
                      left: AppLayout.getHeight(15)),
                  width: size.width * 0.44,
                  height: AppLayout.getHeight(155),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage('assets/images/assets_6.png'),
                          fit: BoxFit.fill)),
                ),
                const Gap(20),
                Stack(
                  children: [
                    const Gap(20),
                    Container(
                      margin: EdgeInsets.only(
                          right: AppLayout.getHeight(15),
                          left: AppLayout.getHeight(15)),
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(155),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage('assets/images/assets_7.jpeg'),
                              fit: BoxFit.fill)),
                    ),
                    // Positioned(
                    //   child: Container(
                    //     padding: EdgeInsets.all(AppLayout.getWidth(18)),
                    //     decoration: BoxDecoration(
                    //       shape: BoxShape.circle,
                    //       border: Border.all(width: 1, color: Colors.black),
                    //       color: Colors.transparent,
                    //     ),
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
          ],
        )
      ]),
    );
  }
}
