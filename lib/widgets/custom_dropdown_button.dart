import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  List<String> values;
  double deviceWidth;
  CustomDropdownButton({required this.values, required this.deviceWidth});
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
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(color: Colors.white),
        items: values.map((e) {
          return DropdownMenuItem(child: Text(e), value: e);
        }).toList(),
        onChanged: (value) {
          print("This is the value $value");
        },
      ),
    );
  }
}
