import 'package:flutter/material.dart';
import 'package:flutter_task_cruv/main.dart';

class TopWidget extends StatelessWidget {
  final Widget child;
  const TopWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
     screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
       height: screenHeight * 0.2-20,
            width: screenWidth, 
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20), 
            decoration:  BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.4), 
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30))
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child:child ,
            ),
    );
  }
}