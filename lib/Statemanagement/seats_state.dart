import 'package:flutter/material.dart';
import 'package:flutter_task_cruv/model/seatmodel.dart';

class SeatsState extends ChangeNotifier {
  List<SeatModel> _reservedSeats = [];  

  List<SeatModel> get seats => _reservedSeats; 

addSeats(SeatModel seat ){ 
  _reservedSeats.add(seat); 
  notifyListeners(); 
}

removeSeat(SeatModel seats ){
  _reservedSeats.remove(seats); 
  notifyListeners();
}

 List<SeatModel> searchSeats(String searchText) {
   notifyListeners();
      return _reservedSeats.where((seat) => seat.seatindex.toString().contains(searchText)).toList();

  }

}