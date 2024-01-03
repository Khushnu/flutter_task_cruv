import 'package:flutter/material.dart';
import 'package:flutter_task_cruv/Statemanagement/seats_state.dart';
import 'package:flutter_task_cruv/main.dart';
import 'package:flutter_task_cruv/themestyle.dart';
import 'package:provider/provider.dart';

class ReservationSeatsScreen extends StatefulWidget {
  const ReservationSeatsScreen({super.key});

  @override
  State<ReservationSeatsScreen> createState() => _ReservationSeatsScreenState();
}

class _ReservationSeatsScreenState extends State<ReservationSeatsScreen> {
  @override
  Widget build(BuildContext context) {
    var seats = context.watch<SeatsState>().seats;
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserved seats'),
      ),
      body: seats.isEmpty
          ? const Center(
              child: Text(
                'No Reservation found',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            )
          : SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total Tickets: ',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          seats.length.toString(),
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: seats.map((e) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: ExpansionTile(
                              title: Text(" Seat no: ${e.seatindex}"),
                              // backgroundColor:AllColors.kExpansionTileCOlor ,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: Colors.blue.withOpacity(0.4),
                              collapsedBackgroundColor: expansiontilecolor,
                              textColor: Colors.black,
                              iconColor: Colors.black,
                              collapsedShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              // collapsedBackgroundColor: AllColors.kExpansionTileCOlor,
                              collapsedTextColor: Colors.black,
                              collapsedIconColor: Colors.black,
                              leading: Image.asset(
                                'Assets/car-seat.png',
                                height: 40,
                              ),
                              children: [
                                Container(
                                  height: screenHeight * 0.1 + 10,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12))),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Seat Type :',
                                              style: TextStyle(fontSize: 16)),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text('${e.seatType}',
                                              style: const TextStyle(fontSize: 16)),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Seat no',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text('${e.seatindex}',
                                              style: const TextStyle(fontSize: 16)),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
