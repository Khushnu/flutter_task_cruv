import 'package:flutter/material.dart';
// import 'package:flutter_task_cruv/main.dart';
import 'package:flutter_task_cruv/themestyle.dart';

class InputTextFieldWidget extends StatefulWidget {
  final TextEditingController textEditingController; 
  final Function(String) onchnged;
  final Function() ontap;
  const InputTextFieldWidget({super.key, 
  required this.textEditingController, 
  required this.onchnged, 
  required this.ontap});

  @override
  State<InputTextFieldWidget> createState() => _InputTextFieldWidgetState();
}

class _InputTextFieldWidgetState extends State<InputTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: widget.textEditingController,
      keyboardType: TextInputType.number,
      onChanged:widget.onchnged ,
      decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: widget.ontap, icon: widget.textEditingController.text.isNotEmpty ? Icon(Icons.close) : Icon(Icons.search)),
        fillColor: Colors.white, 
        filled: true,
      
        contentPadding: const EdgeInsets.only(top: 20, bottom: 10, left: 20 ),
        hintText: 'Search ', 
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textFieldBorderColor),
          borderRadius: BorderRadius.circular(15)
        ), 
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textFieldBorderColor),
          borderRadius: BorderRadius.circular(15)
        ), 
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textFieldBorderColor),
          borderRadius: BorderRadius.circular(15)
        )
      ),
    );
  }
}