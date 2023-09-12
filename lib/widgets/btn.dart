
import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final String nameBtn;
  final EdgeInsets paddingBtn;
  final Color colorBtn;
  final VoidCallback action;

  Btn({required this.nameBtn, required this.paddingBtn, required this.colorBtn, required this.action});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: action,
      style: OutlinedButton.styleFrom(
        backgroundColor: colorBtn, //Colors.orange,
        side:const BorderSide(color: Colors.black, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: paddingBtn //const EdgeInsets.fromLTRB(95, 10, 95, 15),

      ),
      child:  Text(nameBtn, style:  const TextStyle(color: Colors.black)),
    );
  }

}