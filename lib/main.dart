import 'package:flutter/material.dart';
import 'package:flutter_task_cruv/Screens/selection_screen.dart';
import 'package:flutter_task_cruv/Statemanagement/seats_state.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  
  runApp(MultiProvider(providers: [ 
    ChangeNotifierProvider(create: (_)=> SeatsState()), 
  
  ], child: const MyApp(),));
}

double screenHeight = 0;
double screenWidth = 0;
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SeatSelectionScreen(),
    );
  }
}