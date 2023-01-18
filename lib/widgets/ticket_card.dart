import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/constant/app_layouts.dart';
import 'package:ticket_booking/constant/style_colors.dart';
import 'package:ticket_booking/widgets/rounded_icon.dart';

class Ticketcard extends StatelessWidget {
  const Ticketcard(
      {Key? key,
      required this.tickets,
      required this.number,
      required this.number1,
      required this.color})
      : super(key: key);
  final Map<String, dynamic> tickets;

  final double number;
  final bool? color;
  final double number1;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(number1),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color == true ? Colors.white : Colors.red,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21), topRight: Radius.circular(21)),
            ),
            margin: EdgeInsets.only(
                top: AppLayout.getHeight(10),
                left: AppLayout.getHeight(10),
                right: AppLayout.getHeight(10)),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      tickets['code'].toString(),
                      style: Styless.headTextStyles3.copyWith(
                        color: color == true ? Colors.black : Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const RoundedIcons(
                      color: true,
                    ),
                    Expanded(
                      child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ...List.generate(
                                      10,
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                              color: color == true
                                                  ? Colors.black54
                                                  : Colors.white,
                                            )),
                                          ))
                                ],
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color:
                                  color == true ? Colors.black54 : Colors.white,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    const RoundedIcons(
                      color: true,
                    ),
                    const Spacer(),
                    Text(
                      tickets['code1'].toString(),
                      style: Styless.headTextStyles3.copyWith(
                        color: color == true ? Colors.black : Colors.white,
                      ),
                    )
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        tickets["name"].toString(),
                        style: Styless.headTextStyles4.copyWith(
                          color: color == true ? Colors.grey : Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      tickets['flying time'].toString(),
                      style: Styless.headTextStyles4.copyWith(
                        color: color == true ? Colors.grey : Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        tickets['name1'].toString(),
                        textAlign: TextAlign.end,
                        style: Styless.headTextStyles4.copyWith(
                          color: color == true ? Colors.grey : Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            color: color == true ? Colors.white : Colors.blueAccent,
            child: Row(
              children: [
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 30,
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ...List.generate(
                                  15,
                                  (index) => SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                          color: color == true
                                              ? Colors.grey
                                              : Colors.white,
                                        )),
                                      ))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 5,
              left: 15,
              right: 15,
            ),
            height: 70,
            width: AppLayout.getWidth(number),
            decoration: BoxDecoration(
              color: color == true ? Colors.white : Colors.blueAccent,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tickets['date'].toString(),
                          textAlign: TextAlign.start,
                          style: Styless.headTextStyles3.copyWith(
                            color: color == true ? Colors.black : Colors.white,
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Date',
                          style: Styless.headTextStyles4.copyWith(
                            color: color == true ? Colors.grey : Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          tickets['departure time'].toString(),
                          textAlign: TextAlign.start,
                          style: Styless.headTextStyles3.copyWith(
                            color: color == true ? Colors.black : Colors.white,
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Departure Time',
                          style: Styless.headTextStyles4.copyWith(
                            color: color == true ? Colors.grey : Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          tickets['number'].toString(),
                          textAlign: TextAlign.start,
                          style: Styless.headTextStyles3.copyWith(
                            color: color == true ? Colors.black : Colors.white,
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Number',
                          style: Styless.headTextStyles4.copyWith(
                            color: color == true ? Colors.grey : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
