import 'package:flutter/material.dart';
import 'package:miniproject/utils/commom.dart';

class Customenavbar extends StatefulWidget {
  @override
  _Customenavbar createState() => _Customenavbar();
}

class _Customenavbar extends State<Customenavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.yellow,
          Colors.deepOrange,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Center(
        child: GestureDetector(
          child: const Text(
            'Tedlance IT Solutions © 2025',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
                    onTap: () {
            Common().launchUrl('https://tedlance.com/');
          },

        ),
      ),
    );
  }
}
