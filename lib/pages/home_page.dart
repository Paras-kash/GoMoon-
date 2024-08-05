import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          width: _deviceWidth,
          height: _deviceHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _top(),
              Center(child: _Dropdownmenu()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _top() {
    return AppBar(
      shadowColor: Colors.green,
      title: Text("#GoMoon"),
      backgroundColor: Colors.transparent,
      centerTitle: true,
    );
  }

  Widget _Dropdownmenu() {
    // Implement your Dropdown menu widget here
    return DropdownButton<String>(
      items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
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
