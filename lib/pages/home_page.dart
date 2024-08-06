import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.08),
          width: _deviceWidth,
          height: _deviceHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _top(),
              _DropdownButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _top() {
    return Text("#GoMoon", style: TextStyle(fontSize: 70, color: Colors.grey));
  }

  Widget _DropdownButton() {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(53, 53, 53, 1.0),
          borderRadius: BorderRadius.circular(10)),
      width: _deviceWidth,
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
      child: DropdownButton(
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
        value: 1,
        items: const [
          DropdownMenuItem(
            value: 1,
            child: Text(" Indian SS"),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text("American SS"),
          ),
          DropdownMenuItem(
            value: 3,
            child: Text("Chandrayaan"),
          ),
        ].map((e) => e).toList(),
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }
}

Widget _homescreen() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.contain,
        image: AssetImage("assets/images/astro_moon.png"),
      ),
    ),
  );
}
