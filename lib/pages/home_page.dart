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
              _dropdownbutton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dropdownbutton() {
    List<String> _items = [
      "Indain Space Center",
      "Australian Space Center",
      "Russian Space Center",
    ];
    return Container(
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        alignment: Alignment.center,
        underline: Container(),
        value: _items.first,
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(color: Colors.white),
        items: _items.map((e) {
          return DropdownMenuItem(child: Text(e), value: e);
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }

  Widget _top() {
    return Text("#GoMoon", style: TextStyle(fontSize: 70, color: Colors.grey));
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
}
