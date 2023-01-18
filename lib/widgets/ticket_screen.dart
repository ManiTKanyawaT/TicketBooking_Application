import 'package:barcode_widget/barcode_widget.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:ticket_booking/constant/app_infolist.dart';
import 'package:ticket_booking/widgets/column_widget.dart';
import 'package:ticket_booking/widgets/search_box.dart';
import 'package:ticket_booking/widgets/ticket_card.dart';
import '../constant/app_layouts.dart';
import '../constant/style_colors.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styless.backgrounColor,
      body: Stack(
        children: [
          ListView(
            children: [
              Gap(AppLayout.getHeight(10)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(20),
                    vertical: AppLayout.getHeight(20)),
                child: Text(
                  'Tickets',
                  style: Styless.headTextStyles1.copyWith(fontSize: 35),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FittedBoxWidgets(
                    text: 'UpComing',
                  ),
                  FittedBoxWidgets1(
                    text: 'Previous',
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(20)),
                child: Ticketcard(
                  tickets: ticketList[0],
                  number: 370,
                  number1: GetPlatform.isAndroid == true ? 200 : 200,
                  color: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: ColumnWidget(
                          alignment: CrossAxisAlignment.start,
                          firstText: '3458 847337',
                          secondText: 'Passport',
                          thirdText: 'Flutter DB',
                          fourthText: 'Passenger',
                          alignment1: CrossAxisAlignment.end,
                        ),
                      ),
                      const SeparateLine(),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: ColumnWidget(
                          alignment: CrossAxisAlignment.start,
                          firstText: 'B5KO96',
                          secondText: 'Booking Code',
                          thirdText: '908767 0983788',
                          fourthText: 'Number of  E-tickets',
                          alignment1: CrossAxisAlignment.end,
                        ),
                      ),
                      const SeparateLine(),
                      Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/images.png',
                                        scale: 100,
                                      ),
                                      const Text('*** 7864')
                                    ],
                                  ),
                                  Gap(AppLayout.getHeight(10)),
                                  Text(
                                    'Payment Method',
                                    style: Styless.headTextStyles4
                                        .copyWith(color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$345.77',
                                    style: Styless.headTextStyles3,
                                  ),
                                  Gap(AppLayout.getHeight(10)),
                                  Text(
                                    'Price',
                                    style: Styless.headTextStyles4
                                        .copyWith(color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          )),
                      const SeparateLine(),
                      SizedBox(
                        height: AppLayout.getHeight(100),
                        width: AppLayout.getWidth(380),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: BarcodeWidget(
                              barcode: Barcode.code128(),
                              data: 'https://github.com',
                              drawText: false,
                              color: Styless.textColor,
                              width: double.infinity,
                              height: 60,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(24),
            top: AppLayout.getWidth(529),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2)),
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                maxRadius: 3,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(24),
            top: AppLayout.getWidth(529),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2)),
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                maxRadius: 3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
