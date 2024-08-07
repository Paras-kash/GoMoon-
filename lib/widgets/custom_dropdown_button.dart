import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  final List<String> values;
  final double deviceWidth;

  CustomDropdownButton({
    required this.values,
    required this.deviceWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        alignment: Alignment.center,
        underline: Container(),
        value: values.first,
        style: TextStyle(color: Colors.white),
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        items: values.map((e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
        onChanged: (value) {
          print("The Value is $value");
        },
      ),
    );
  }
}
