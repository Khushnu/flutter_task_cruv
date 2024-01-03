import 'package:flutter/material.dart';
import 'package:flutter_task_cruv/Screens/reserved_seats_screen.dart';
import 'package:flutter_task_cruv/Statemanagement/seats_state.dart';
import 'package:flutter_task_cruv/Widgets/cabin_seat_widget.dart';
import 'package:flutter_task_cruv/Widgets/input_textfield_widget.dart';
import 'package:flutter_task_cruv/Widgets/search_button_widget.dart';
import 'package:flutter_task_cruv/Widgets/topwidget.dart';
import 'package:flutter_task_cruv/main.dart';
import 'package:flutter_task_cruv/themestyle.dart';
import 'package:provider/provider.dart';

class SeatSelectionScreen extends StatefulWidget {
  const SeatSelectionScreen({super.key});

  @override
  State<SeatSelectionScreen> createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  final searchBar = TextEditingController();
  final scrollcontroller = ScrollController();

  scrollTo(String search){
  
  }


  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
     
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            
            TopWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 2))
                          ]),
                      child: InputTextFieldWidget(
                        textEditingController: searchBar,
                        onchnged: (v){
                          searchBar.text=v;
                          print(v);
                          setState(() {
                          });
                          context.read<SeatsState>().searchSeats(v);
                         
                        }, ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SearchButtonWidget(ontap: () {})
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                controller: scrollcontroller,
                padding: const EdgeInsets.all(10),
                itemCount: 10,
                itemBuilder: (_, index) {
        //             var seats = context.read<SeatsState>().searchSeats(searchBar.text);
        //     if(seats.isNotEmpty){
        // final targetindex = seats.first.seatindex! ~/3 ;
        // scrollcontroller.animateTo(index * 60 ,
        //  duration: Duration(milliseconds: 500), 
        //  curve: Curves.easeIn);
        //     }
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: primaryCOlors,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CabinSeatWidget(
                                      indexSeat: (1 + index * 8),
                                      typeofSeat: 'Upper',
                                      searchText: searchBar.text,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    CabinSeatWidget(
                                        indexSeat: (2 + index * 8),
                                        typeofSeat: 'Middle', 
                                        searchText: searchBar.text,), 
                                        
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    CabinSeatWidget(
                                        indexSeat: (3 + index * 8),
                                        searchText: searchBar.text,
                                        typeofSeat: 'Lower')
                                  ],
                                ),
                              )
                            ],
                          ),
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                height: 60,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: primaryCOlors,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7.0),
                                child: CabinSeatWidget(
                                    indexSeat: (7 + index * 8),
                                    searchText: searchBar.text,
                                    typeofSeat: 'Side Low'),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: primaryCOlors,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CabinSeatWidget(
                                        indexSeat: (6 + index * 8),
                                        searchText: searchBar.text,
                                        typeofSeat: 'Upper'),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    CabinSeatWidget(
                                        indexSeat: (5 + index * 8),
                                        searchText: searchBar.text,
                                        typeofSeat: 'Middle'),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    CabinSeatWidget(
                                        indexSeat: (4 + index * 8),
                                        searchText: searchBar.text,
                                        typeofSeat: 'Lower')
                                  ],
                                ),
                              )
                            ],
                          ),
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                height: 60,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: primaryCOlors,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Transform.translate(
                                    offset: Offset(0, -12),
                                    child: CabinSeatWidget(
                                        indexSeat: (8 + index * 8),
                                        searchText: searchBar.text,
                                        typeofSeat: 'Side Up')),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ), 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> const ReservationSeatsScreen()));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(screenWidth, 48), 
                backgroundColor: buttoncolor
              ),
               child: const Text('Confirm Selection', style: TextStyle(color: Colors.white, fontSize: 15),)),
            ), 
             const SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }
}
