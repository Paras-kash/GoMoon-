import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

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
              _Bookaride(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dropdownbutton() {
    return CustomDropdownButton(
      values: const [
        "Indain Space Center",
        "Australian Space Center",
        "Russian Space Center",
      ],
      deviceWidth: _deviceHeight,
    );
  }

  Widget _Bookaride() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _dropdownbutton(),
          _numberoftravellers(),
        ],
      ),
    );
  }

  Widget _numberoftravellers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        CustomDropdownButton(
          values: const [
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "10",
          ],
          deviceWidth: _deviceWidth * 0.39,
        ),
        CustomDropdownButton(
          values: const [
            "Economy",
            "Business",
            "First Class",
            "Premium Economy",
          ],
          deviceWidth: _deviceWidth * 0.39,
        ),
      ],
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
