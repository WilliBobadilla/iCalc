import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('iCalc'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.15,
              child: Column(
                children: [
                  Row(
                    children: [],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    funcButton(
                      "AC",
                      Colors.black,
                      Color.fromARGB(255, 214, 212, 212),
                    ),
                    funcButton(
                      "+/-",
                      Colors.black,
                      Color.fromARGB(255, 214, 212, 212),
                    ),
                    funcButton(
                      "%",
                      Colors.black,
                      Color.fromARGB(255, 214, 212, 212),
                    ),
                    funcButton(
                      "/",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(7),
                    button(8),
                    button(9),
                    funcButton(
                      "X",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(4),
                    button(5),
                    button(6),
                    funcButton(
                      "-",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(1),
                    button(2),
                    button(3),
                    funcButton(
                      "+",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    zeroButton(),
                    funcButton(" . ", Colors.white, Colors.grey),
                    funcButton(
                      "+",
                      Color.fromARGB(255, 253, 251, 251),
                      Color.fromARGB(255, 235, 169, 27),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget button(int number) {
    return ElevatedButton(
      child: Text(
        number.toString(),
        style: TextStyle(fontSize: 24),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(80, 80),
        shape: CircleBorder(),
      ),
    );
  }

  Widget funcButton(String text, Color textColor, Color backGroundColor) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(fontSize: 24, color: textColor),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: backGroundColor,
        fixedSize: Size(75, 75),
        shape: CircleBorder(),
      ),
    );
  }

  Widget zeroButton() {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(
              color: Colors.teal,
              width: 2.0,
            ),
          ),
        ),
      ),
      child: Text(
        '0        ',
        style: TextStyle(fontSize: 55),
      ),
      onPressed: () {},
    );
  }
}
