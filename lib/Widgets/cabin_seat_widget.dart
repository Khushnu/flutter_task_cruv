import 'package:flutter/material.dart';
import 'package:flutter_task_cruv/Statemanagement/seats_state.dart';
import 'package:flutter_task_cruv/model/seatmodel.dart';
import 'package:flutter_task_cruv/themestyle.dart';
import 'package:provider/provider.dart';

class CabinSeatWidget extends StatefulWidget {
  final int indexSeat; 
  final String typeofSeat;
  final String searchText;
  
  const CabinSeatWidget({super.key, 
  required this.indexSeat, 
  required this.typeofSeat, 
  required this.searchText, });

  @override
  State<CabinSeatWidget> createState() => _CabinSeatWidgetState();
}

class _CabinSeatWidgetState extends State<CabinSeatWidget> {


  SeatModel seatModel = SeatModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    seatModel = SeatModel(seatindex:  widget.indexSeat, seatType: widget.typeofSeat, );
  }

  @override
  Widget build(BuildContext context) {
    var seats = context.watch<SeatsState>().seats;
    return GestureDetector(
          onTap: () {
            if (seats.contains(seatModel)) {
             context.read<SeatsState>().removeSeat(seatModel);
            } else {
             context.read<SeatsState>().addSeats(seatModel);
            }
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: (widget.searchText == widget.indexSeat.toString() || seats.contains(seatModel)) ? borderColor : Colors.transparent,
                width: 2,
              ),
              color: (seats.contains(seatModel)) ? primarySelectionColor : const Color(0xffCEEAFF),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.indexSeat.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: (seats.contains(seatModel)) ? const Color(0xffCEEAFF) : const Color(0xff126DCA),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.typeofSeat,
                  style: TextStyle(
                    fontSize: 12,
                    color: (seats.contains(seatModel)) ? const Color(0xffCEEAFF) : const Color(0xff126DCA),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        );
  }
}