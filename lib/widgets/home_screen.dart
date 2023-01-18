import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/utils.dart';
import 'package:ticket_booking/constant/app_infolist.dart';
import 'package:ticket_booking/constant/style_colors.dart';
import 'package:ticket_booking/widgets/hotels_view.dart';
import 'package:ticket_booking/widgets/search_box.dart';
import 'package:ticket_booking/widgets/ticket_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styless.backgrounColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good Morning', style: Styless.headTextStyles3),
                          const Gap(5),
                          Text('Book Tickets', style: Styless.headTextStyles1),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/assets_1.jpeg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  searchBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Flight',
                        style: Styless.headTextStyles2,
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint('U r tap');
                        },
                        child: Text(
                          'View all',
                          style: Styless.textStyles
                              .copyWith(color: Styless.primaryColor),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .map((tickett) => Ticketcard(
                                tickets: tickett,
                                number: 345,
                                number1:
                                    GetPlatform.isAndroid == true ? 200 : 200,
                                color: false,
                              ))
                          .toList(),
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hotels',
                        style: Styless.headTextStyles2,
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint('U r tap');
                        },
                        child: Text(
                          'View all',
                          style: Styless.textStyles
                              .copyWith(color: Styless.primaryColor),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          .map((asd) => HotelsView(hotelsss: asd))
                          .toList(),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
