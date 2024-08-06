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
              _DropdownButton(),
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

  Widget _DropdownButton() {
    return DropdownButton(
      items: [
        DropdownMenuItem(
          child: Text(" Indian SS"),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text("American SS"),
          value: 2,
        ),
        DropdownMenuItem(
          child: Text("Chandrayaan"),
          value: 3,
        ),
      ],
      onChanged: (value) {
        print(value);
      },
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
