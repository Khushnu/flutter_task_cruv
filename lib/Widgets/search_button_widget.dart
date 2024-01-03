import 'package:flutter/material.dart';
import 'package:flutter_task_cruv/themestyle.dart';

class SearchButtonWidget extends StatefulWidget {
  final Function() ontap;
  const SearchButtonWidget({super.key, required this.ontap});

  @override
  State<SearchButtonWidget> createState() => _SearchButtonWidgetState();
}

class _SearchButtonWidgetState extends State<SearchButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: textFieldBorderColor),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, 
                        spreadRadius: 0.8, 
                        
                        offset: Offset(0, 2), 
                        blurRadius: 2 )
                      ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14)),
                    child:  Center(
                      child: Icon(Icons.search, color: textFieldBorderColor,),
                    ),
                  ),
    );
  }
}